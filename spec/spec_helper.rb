ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'pg'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'setup_test_database'
Capybara.app = Bookmarks

RSpec.configure do |config|
  
  config.before(:each) do
    fresh_table
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
