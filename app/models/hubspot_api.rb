class HubspotApi
    include HTTParty
    base_uri "https://api.hubapi.com/content/api/v2"
  #   attr_accessor guardian
  
  #   https://content.guardianapis.com/search?section=technology&api-key=e64e2a1e-e18f-4db0-8e0b-9728f49712bb
  
  #   def initialize(section, key="api-key=#ENV[GUARDIAN_API_KEY")
  #     @guardian = guardian
  #     @options = { query: { section: section, &: key} }
  #   end
  
  #   def search
  #     @option = self.class.get("/search", @options)
  #   end
  
    def fetchPosts
      # self.class.get("https://api.hubapi.com/content/api/v2/blog-posts?hapikey=#{ENV['HUBSPOT_API_KEY']}")
      self.class.get("https://api.hubapi.com/integrations/api/v2/#{ENV['HUBSPOT_APP_ID']}/event-types?hapikey=#{ENV['HUBSPOT_API_KEY']}")
    end
  
  end