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
            tokens_response = request_tokens(code)
            access_token = tokens_response["access_token"]
            user_response = request_user_data(access_token)
            { tokens_data: tokens_response, user_data: user_response }
        end
    
        def renew_tokens(refresh_token)
        end
    
        def revoke_tokens
        end

        private

        attr_accessor :client_id, :client_secret  

        def request_tokens(code)
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
            uri = config[:endpoints][:tokens_endpoint] 
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
    
    def self.config 
        {
            google: {
                provider: "google_oauth2",
                endpoints: {
                    authorization_code_endpoint: "",
                    tokens_endpoint: "https://oauth2.googleapis.com/token",
                    user_data_endpoint: "https://www.googleapis.com/oauth2/v2/userinfo", 
                    renew_access_token_endpoint: "",
                    revoke_tokens_endpoint: ""
                },
                scopes: ["email", "profile", "openid", "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/userinfo.profile"],
                redirect_uri: ""
            },
            twitter: {
                provider: "twitter",
                endpoints: {
                    authorization_code_endpoint: "",
                    tokens_endpoint: "",
                    user_data_endpoint: "", 
                    renew_access_token_endpoint: "",
                    revoke_tokens_endpoint: ""
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