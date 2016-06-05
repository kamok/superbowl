require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start 'rails'
  puts "required simplecov"
end

module Superbowl
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    #heroku and devise
    config.assets.initialize_on_precompile = false

  end
end
