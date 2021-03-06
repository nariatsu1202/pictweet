require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pic
  class Application < Rails::Application
    config.generators do |g|
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    config.active_record.raise_in_transactional_callbacks = true
  end
end
