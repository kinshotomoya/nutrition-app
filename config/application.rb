require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nutrition
  class Application < Rails::Application
    config.to_prepare do
      Devise::RegistrationsController.layout "devise"
    end
  end
end
