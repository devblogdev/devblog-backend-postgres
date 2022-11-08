# Module for Hybrid Omniauth gem
module MyOmniauth
    
    class OmniauthRequest
        include HTTParty
        attr_accessor :config

        def initialize(provider)
            MyOmniauth.config.each do |key, value|
                key = key.to_s
                if provider.include? key
                    self.config = value
                    self.client_id = "#{ENV[(key.upcase + '_CLIENT_ID')]}"
                    self.client_secret = "#{ENV[(key.upcase + '_CLIENT_SECRET')]}"
                    self.config[:redirect_uri] = "http://localhost:8000"
                    break
                end
            end
        end

        def retrieve_user_data(code)
            tokens_response = request_token("code")
            # debugger
            access_token = tokens_response["access_token"]
            user_response = request_user_data(access_token)
            # debugger
            { tokens_data: tokens_response, user_data: user_response }
        end
    
        def renew_token(refresh_token)
            options = {
                query: {
                    code: code,
                    client_id: client_id,
                    client_secret: client_secret,
                    refresh_token: refresh_token,
                    grant_type: "refresh_token"
                },
                headers: { "Content-type" => "application/x-www-form-urlencoded" }
            }
            uri = config[:endpoints][:renew_access_token_endpoint]
            self.class.post(uri, options)
        end
    
        # Revokes an access token or a refresh token; if access token, its corresponding r
        # refresh token is also revoked
        def revoke_token(token)
            options = {
                query: {
                    token: token
                },
                headers: { "Content-type" => "application/x-www-form-urlencoded" }
            }
            uri = config[:endpoints][:renew_access_token_endpoint]
            self.class.post(uri, options)
        end

        private

        attr_accessor :client_id, :client_secret  

        def request_token(code)
            options = {
                query: {
                    code: code,
                    client_id: client_id,
                    client_secret: client_secret,
                    redirect_uri: config[:redirect_uri],
                    grant_type: "authorization_code"
                },
                headers: { "Content-type" => "application/x-www-form-urlencoded" }
            }    
            uri = config[:endpoints][:token_endpoint] 
            self.class.post(uri, options)
        end
    
        def request_user_data(access_token)
            options = {
                :headers => { "Authorization" => "Bearer #{access_token}" } 
            }
            uri = config[:endpoints][:user_data_endpoint]
            self.class.get(uri, options) 
        end

    end

    # Module methods

    def self.config 
        {
            google: {
                provider: "google_oauth2",
                endpoints: {
                    authorization_code_endpoint: "",
                    token_endpoint: "https://oauth2.googleapis.com/token",
                    user_data_endpoint: "https://www.googleapis.com/oauth2/v2/userinfo", 
                    renew_access_token_endpoint: "https://oauth2.googleapis.com/token",
                    revoke_token_endpoint: "https://oauth2.googleapis.com/revoke"
                },
                scopes: ["email", "profile", "openid", "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/userinfo.profile"],
                redirect_uri: ""
            },
            twitter: {
                provider: "twitter",
                endpoints: {
                    authorization_code_endpoint: "",
                    token_endpoint: "",
                    user_data_endpoint: "", 
                    renew_access_token_endpoint: "",
                    revoke_token_endpoint: ""
                },
                scopes: [],
                redirect_uri: ""
            }
        }
    end

    # Making a dmoule's class method private
    # option 1: 
    # private_class_method :config
    # option 2:
    # class << self
    #     protected :config
    # end


end