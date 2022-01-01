# Redis.current = Redis.new(url: ENV['REDIS_TLS_URL']
#                           port: ENV['REDIS_PORT']
#                         #   db:   ENV['REDIS_DB']
#                           )
$redis = Redis.new(url: ENV["REDIS_TLS_URL"], ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE })


# USING SENTINEL FOR RAILS SERVER AUTOMATIC RE-START IN CASE OF SHURDOWN
# if Rails.env.production?
#     SENTINELS = ENV['SENTINEL_HOSTS'].split(' ').map! do |host|
#         { host: host, port: ENV['SENTINEL_PORT'] }
#     end

#     Redis.current = Redis.new(url: ENV['SENTINEL_URL'],
#                             sentinels: SENTINELS,
#                             role: :master)
# else
#     Redis.current = Redis.new(url: ENV['REDIS_URL'],
#                             port: ENV['REDIS_PORT'],
#                             db: ENV['REDIS_DB'])
# end