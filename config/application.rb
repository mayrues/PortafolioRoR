require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module PortafolioRoR
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.action_mailer.delivery_method =:smtp
    
    config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => "espinosamayte@gmail.com",
      :user_name            => "espinosamayte@gmail.com",
      :password             => "macareno2020",
      :authentication       => :plain,
      :enable_starttls_auto => true
    }

    config.action_mailer.default_url_options = {
      :host => "espinosamayte@gmail.com"
    }    
    #config.assets.enabled = false
    #config.assets.compile = true
    #config.assets.digest = true
    #config.assets.paths << Rails.root.join("app", "assets", "flash")

    #config.assets.initialize_on_precompile=false
    config.serve_static_assets= true
    
    
    # Do not fallback to assets pipeline if a precompiled asset is missed.
    config.assets.compile = true
    config.assets.compress = true

    # Generate digests for assets URLs.
    config.assets.digest = true

    # Version of your assets, change this if you want to expire all your assets.
    config.assets.version = '1.0'
    #config.assets.precompile += %w( application.css)
    config.assets.precompile += %w( *.css *.js )

  end
end
