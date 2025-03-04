module GoogleOAuthManager
  class RetrieveUserData < ApplicationService
    include HTTParty
    attr_reader :token
    attr_accessor :user_data, :errors

    GOOGLE_PUBLIC_KEYS_URL = "https://www.googleapis.com/oauth2/v3/certs"
    GOOGLE_ISS = ['accounts.google.com', 'https://accounts.google.com']

    def initialize(token)
      @token = token
      @user_data = {}
      @errors = []
    end

    def call      
      decode_google_token
      self
    end

    private

    def decode_google_token
      unless token['credential'].class.to_s == 'String'
        @errors.push("Invalid token: must be a string") and return
      end

      credential = token['credential'].split('.')
      verify_token_signature(credential)
    end

    # Answers: Was this token generated by Google?
    # (token's 'kid' param equals corresponding param from Google's public keys)
    # Google's public keys: https://www.googleapis.com/oauth2/v3/certs
    def verify_token_signature(credential)
      begin
        kid = JSON.parse(Base64.decode64(credential[0]))['kid']
      rescue JSON::ParserError => e
        @errors.push("Invalid json after decoding the token: #{e.message}") and return
      end
      google_provider = OmniAuthProvider.find_or_create_by(provider: 'google')
      google_keys = google_provider.public_keys&.split(",")
      unless google_keys&.include?(kid) && Time.now.to_i < google_provider.expires
        response = self.class.get(GOOGLE_PUBLIC_KEYS_URL)
        kids = response['keys'].map{ |key| key['kid'] }
        exp = response.headers['cache-control'].split(',')[1].split('=')[1].to_i
        exp = Time.now.to_i + exp
        google_provider.update(public_keys: kids.join(','), expires: exp)
        unless kids.include?(kid)
          @errors.push("Invalid token: the sign in token does not belong to Google") and return
        end
      end
      verify_token_client(credential)
    end

    # Answers: Was this token generated using the google client for my app?
    # (token's 'aud' param)
    def verify_token_client(credential)
      unless credential[1].class.to_s == 'String'
        @errors.push("Invalid google token: must be a string") and return
      end

      begin
        raw_user_data = JSON.parse(Base64.decode64(credential[1]))
      rescue JSON::ParserError => e
        @errors.push("Invalid json after decoding the token: #{e.message}") and return
      end

      unless raw_user_data['aud'] == ENV['GOOGLE_CLIENT_ID']
        @errors.push("Invalid google client id: the token's client id does not match the server's google client id") and return
      end
      verify_token_iss(raw_user_data)
    end

    def verify_token_iss(raw_user_data)
      unless GOOGLE_ISS.include?(raw_user_data['iss'])
        @errors.push("Invalid token: the token does not belong to a google account") and return
      end
      token_expired?(raw_user_data)
    end

    def token_expired?(raw_user_data)
      unless raw_user_data['exp'] > Time.now.to_i
        @errors.push("Invalid google token: the token is expired") and return
      end
      user_setup(raw_user_data)
    end

    def user_setup(raw_user_data)
      @user_data = raw_user_data
    end

  end
end






