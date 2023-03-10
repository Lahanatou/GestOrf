require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GestOrfD
  class Application < Rails::Application
    config.i18n.available_locales = [:en, :fr]
    config.i18n.default_locale = :fr
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        model_specs: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
