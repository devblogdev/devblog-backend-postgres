class NewYorkTimes
    include HTTParty
    # base_uri "https://api.hubapi.com/content/api/v2"
    attr_accessor :key
  
    def initialize(apikey = "#{ENV['NEW_YORK_TIMES_KEY'] || 'dummy_key' }" )
      @key = apikey
    end
    
    def section(section)
      min_until_tomorrow = ((Date.tomorrow.to_time - Time.now)/60).to_i
      expiration = 60 < min_until_tomorrow ? 60 : min_until_tomorrow
      response = Rails.cache.fetch("nytimes_posts", expires_in: expiration.minutes) do
          puts "Caching block called"
          self.class.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=#{self.key}")
      end
      data = response["results"]
      construct_posts(data.take(25))
    end

    def construct_posts(data)
      all_posts = []
      data.each do |post_hash|
        all_posts << Post.build_NYTIMES_post(post_hash)
      end
      all_posts
    end

  end