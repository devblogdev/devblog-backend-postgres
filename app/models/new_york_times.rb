class NewYorkTimes
    include HTTParty
    # base_uri "https://api.hubapi.com/content/api/v2"
    attr_accessor :key
  
  #   https://content.guardianapis.com/search?section=technology&api-key=e64e2a1e-e18f-4db0-8e0b-9728f49712bb
  
    def initialize(apikey = "#{ENV['NEW_YORK_TIMES_KEY']}" )
      @key = apikey
      # @options = { query: { section: section, &: key} }
    end
  
  #   def search
  #     @option = self.class.get("/search", @options)
  #   end
  
    def section(section)
        # self.class.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=#{ENV['NEW_YORK_TIMES_KEY']}")
        self.class.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=#{self.key}")
    end

    # def build_posts()
    # end
  
  end