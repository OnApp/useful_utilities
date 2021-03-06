ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../dummy/config/environment', __FILE__)

require 'active_record'
require 'useful_utilities'
require 'rspec/rails'
require 'pry'
require 'factory_bot_rails'
require 'rspec/its'

FactoryBot.definition_file_paths = %w(../spec/factories)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include FactoryBot::Syntax::Methods

  config.use_transactional_fixtures = true
  config.disable_monkey_patching!
  config.profile_examples = nil
  config.order = :random
  config.expose_dsl_globally = true
end
