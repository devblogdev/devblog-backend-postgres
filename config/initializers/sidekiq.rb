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
    config.redis = { ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE }, url: ENV["REDIS_URL"] || "redis://127.0.0.1" }
end
  
Sidekiq.configure_client do |config|
    # config.redis = { url: 'redis://redis.example.com:7372/0' }
    config.redis = { ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE }, url: ENV["REDIS_URL"] || "redis://127.0.0.1" }
end