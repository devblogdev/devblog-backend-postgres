class ImagesCleanupJob < ApplicationJob
    queue_as :default
  
    def perform(urls)
        # Perform parallel http requests
        deleteKeys = urls.map{ |url| url.split("-")[1] }
        if deleteKeys
            hydra = Typhoeus::Hydra.new
            requests = deleteKeys.length.times.map { |i|
                request = Typhoeus::Request.new(
                    "https://api.imgur.com/3/image/#{deleteKeys[i]}", 
                    method: :delete,
                    headers: { Authorization: "Bearer " + ENV['IMGUR_ACCESS_TOKEN'] }
                )
                hydra.queue(request)
                request
            }
            hydra.run   
        end
    end

end