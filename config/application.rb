require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Baukis
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.time_zone = 'Asia/Tokyo'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja

    config.generators do |g|
      g.helper false
      g.assets false
      g.test_framework :rspec, view_specs: false, helper_specs: false, fixture: true
      g.controller_spec false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
      g.routing_specs false
      g.decorator false
    end
  end
end
