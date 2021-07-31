class GuardianApi
  include HTTParty
  base_uri "https://content.guardianapis.com"
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
    key = "#{ENV["GUARDIAN_API_KEY"]}"
    self.class.get("https://content.guardianapis.com/search?section=technology&api-key=#{ENV['GUARDIAN_API_KEY']}")
  end

end