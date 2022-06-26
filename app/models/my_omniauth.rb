module MyOmniauth

    def self.config 
        {
            google: "google_oauth2",
            twitter: "twitter"
        }
    end

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
            MyOmniauth.config.each do |key, value|
                key = key.to_s
                if provider.include? key
                    self.provider = value
                    self.client_id = "#{ENV[(key.upcase + '_CLIENT_ID')]}"
                    self.client_secret = "#{ENV[(key.upcase + '_CLIENT_SECRET')]}"
                    break
                end
            end
            provider_endpoints = (provider + "_endpoints").to_sym
            MyOmniauth.send(provider_endpoints).each do |key, value|
                self.send("#{key}=", value)
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


end