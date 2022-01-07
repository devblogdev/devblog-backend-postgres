require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# THESE LINES WERE IN cable.yml
  # url: <%= ENV.fetch("REDIS_URL") %>/<%= ENV.fetch("REDIS_DB") %>
  # url: <%= ENV.fetch("REDIS_URL") { "redis://localhost:6379/1" } %>

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevblogBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Activates ActiveJob for assynchronous tasks
    config.active_job.queue_adapter = :sidekiq
    
    config.middleware.insert_before 0, Rack::Cors do

      allow do
        # origins '*'
        origins ENV['FRONT_END_URL_NETLIFY_SUBDOMAIN'] || "http://localhost:8001"
        resource '*',
          :headers => :any,
          :methods => [:get, :post, :delete, :put, :patch, :options, :head]
          # :max_age => 0 ,
          # credentials: true
      end

      allow do
        origins ENV['FRONT_END_URL_CUSTOM_DOMAIN'] || "http://localhost:8000"
        resource '*',
          :headers => :any,
          :methods => [:get, :post, :delete, :put, :patch, :options, :head]
      end

      # allow do
      #   origins ENV['FRONT_END_URL_TEST']
      #   resource '*',
      #     :headers => :any,
      #     :methods => [:get, :post, :delete, :put, :patch, :options, :head]
      # end

    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
