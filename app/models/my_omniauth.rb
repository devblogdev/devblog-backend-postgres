module MyOmniauth

    def self.google_oauth2_endpoints
        {
            tokens_endpoint: "https://oauth2.googleapis.com/token",
            user_info_endpoint: "https://www.googleapis.com/oauth2/v2/userinfo", 
            renew_access_token_endpoint: "",
            revoke_tokens_endpoint: ""
        }
    end


    class OmniauthRequest

        include HTTParty
        attr_accessor :provider, 
                      :tokens_endpoint, 
                      :user_info_endpoint, 
                      :renew_access_token_endpoint, 
                      :revoke_tokens_endpoint

        def initialize(provider)
            self.provider = provider
            provider_endpoints = (provider + "_endpoints").to_sym
            # byebug
            # MyOmniauth.send(provider_endpoints).each do |key, value|
            #     # self.send("#{key}", value)
            #     puts "#{key} and value is #{value}"
            # end
        end

        def request_tokens(code)
        end
    
        def request_user_data(access_token)
        end
    
        def renew_tokens(refresh_token)
        end
    
        def revoke_tokens
        end


        protected
        def credentials
            {
                client_id: "",
                client_secret: ""
            }
        end

    end


end