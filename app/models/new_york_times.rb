class NewYorkTimes
    include HTTParty
    # base_uri "https://api.hubapi.com/content/api/v2"
    attr_accessor :key
  
    def initialize(apikey = "#{ENV['NEW_YORK_TIMES_KEY']}" )
      @key = apikey
    end
    
    def section(section)
        # self.class.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=#{ENV['NEW_YORK_TIMES_KEY']}")
        self.class.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=#{self.key}")
    end

    # def build_posts()
    # end
  end