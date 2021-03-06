require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require_relative "../lib/same_site_security/middleware"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Signon
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.active_record.belongs_to_required_by_default = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading

    config.action_mailer.notify_settings = {
      api_key: Rails.application.secrets.notify_api_key || "fake-test-api-key",
    }

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = "London"

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    I18n.config.enforce_available_locales = true

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Prevent ActionDispatch::RemoteIp::IpSpoofAttackError when the client set a Client-IP
    # header and the request IP was interrogated.
    #
    # In our infrastructure, the protection this would give is provided by nginx, so
    # disabling it solves the above problem and doesn't give us additional risk.
    config.action_dispatch.ip_spoofing_check = false

    config.to_prepare do
      Doorkeeper::ApplicationController.layout "application"
    end

    config.eager_load_paths << Rails.root.join("lib")

    config.active_job.queue_adapter = :sidekiq

    config.middleware.insert_before 0, SameSiteSecurity::Middleware

    config.action_dispatch.return_only_media_type_on_content_type = true

    # allows another assets location to be specified if assets are stored in non-default path
    config.assets.prefix = ENV.fetch("ASSETS_PREFIX", "/assets")

    # allows another asset host to be specified if different from app host
    config.asset_host = ENV.fetch("ASSET_HOST", nil)

    # Using a sass css compressor causes a scss file to be processed twice
    # (once to build, once to compress) which breaks the usage of "unquote"
    # to use CSS that has same function names as SCSS such as max.
    # https://github.com/alphagov/govuk-frontend/issues/1350
    config.assets.css_compressor = nil
  end
end
