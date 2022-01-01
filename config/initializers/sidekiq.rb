# schedule = [
#   {'name' => MyName, 'class' => MyJob, 'cron'  => '1 * * * *',  
#   'queue' => default, 'active_job' => true }
# ]

# Sidekiq.configure_server do |config|
#  config.redis = { host:'localhost', port: 6379, db: 1 }
#  Sidekiq::Cron::Job.load_from_array! schedule
# end
# Sidekiq.configure_client do |config|
#  config.redis = { host:'localhost', port: 6379, db: 1 }
# end



# NEWEST LINES
Sidekiq.configure_server do |config|
    # config.redis = { url: 'redis://redis.example.com:7372/0' }
    config.redis = { url: ENV["REDIS_URL"] }
end
  
Sidekiq.configure_client do |config|
    # config.redis = { url: 'redis://redis.example.com:7372/0' }
    config.redis = { url: ENV["REDIS_URL"] }
end