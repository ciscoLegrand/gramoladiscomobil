require 'spec_helper'
require 'simplecov'

SimpleCov.start 'rails' do
  enable_coverage :branch
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/jobs/'
  # add_filter '/mailers/'
  # add_filter '/channels/'
  # add_filter '/helpers/'
  # add_filter '/test/'
  # add_filter '/config/'
  # add_filter '/spec/' # for rspec
  # add_filter '/test/' # for minitest

  SimpleCov.minimum_coverage_by_file 80
  SimpleCov.refuse_coverage_drop
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'shoulda/matchers'
require 'factory_bot_rails'
require 'database_cleaner/active_record'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  # Hace que los nombres de las pruebas sean más legibles
  config.default_formatter = 'doc' if config.files_to_run.one?
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
