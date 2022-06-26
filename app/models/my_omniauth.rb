module MyOmniauth
    
    class OmniauthRequest
        include HTTParty
        attr_accessor :provider, 
                      :authorization_code_endpoint,
                      :tokens_endpoint, 
                      :user_info_endpoint, 
                      :renew_access_token_endpoint, 
                      :revoke_tokens_endpoint

        def initialize(provider)
            MyOmniauth.config.each do |key, value|
                key = key.to_s
                if provider.include? key
                    self.provider = value[:provider]
                    self.client_id = "#{ENV[(key.upcase + '_CLIENT_ID')]}"
                    self.client_secret = "#{ENV[(key.upcase + '_CLIENT_SECRET')]}"

                    value[:endpoints].each do |k, v| 
                        self.send "#{k}=", v
                    end
                    break
                end
            end
        end

        def request_tokens(code)
            self.class.post("https://oauth2.googleapis.com/token?#{@options[@provider.to_sym][:token_params]}", 
            :headers => { "Content-type" => "application/x-www-form-urlencoded" }
          )
        end
    
        def request_user_data(access_token)
        end
    
        def renew_tokens(refresh_token)
        end
    
        def revoke_tokens
        end

        private

        attr_accessor :client_id, :client_secret  
    end
    
    def self.config 
        {
            google: {
                provider: "google_oauth2",
                endpoints: {
                    authorization_code_endpoint: "",
                    tokens_endpoint: "https://oauth2.googleapis.com/token",
                    user_info_endpoint: "https://www.googleapis.com/oauth2/v2/userinfo", 
                    renew_access_token_endpoint: "",
                    revoke_tokens_endpoint: ""
                },
                scopes: ["email", "profile", "openid", "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/userinfo.profile"]
            },
            twitter: {
                provider: "twitter",
                endpoints: {
                    authorization_code_endpoint: "",
                    tokens_endpoint: "",
                    user_info_endpoint: "", 
                    renew_access_token_endpoint: "",
                    revoke_tokens_endpoint: ""
                },
                scopes: []
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