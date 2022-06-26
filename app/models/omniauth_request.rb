class OmniauthRequest
  include HTTParty
  attr_accessor :provider

  def initialize(provider)
    @provider = provider
    if provider == "google" 
      @options = {
        google: {
          headers: {
              token: { "Content-type": "application/x-www-form-urlencoded" }
          },
          code_params: "https://accounts.google.com/o/oauth2/v2/auth?scope=email+profile+https://www.googleapis.com/auth/userinfo.email+https://www.googleapis.com/auth/userinfo.profile+openid&response_type=code&client_id= #{ENV['GOOGLE_CLIENT_ID'] || 'dummy_id' }&client_secret= #{ENV['GOOGLE_CLIENT_SECRET'] || 'dummy_secret' }&redirect_uri=http://localhost:3000/perfection",
          token_params: "code=#{authorization_code}&client_id=#{ENV['GOOGLE_CLIENT_ID'] || 'dummy_id' }&client_secret=#{ENV['GOOGLE_CLIENT_SECRET'] || 'dummy_secret' }&redirect_uri=http://localhost:8000&grant_type=authorization_code"
        }
      }
    end
  end

  def request_tokens(code)
    response = self.class.post("https://oauth2.googleapis.com/token?#{@options[@provider.to_sym][:token_params]}", 
        :headers => { "Content-type" => "application/x-www-form-urlencoded" }
      )
    response
  end

  def request_user_data(access_token)
    self.class.get("https://www.googleapis.com/oauth2/v2/userinfo", 
      :headers => { "Authorization" => "Bearer #{access_token}" }
    )
  end
end