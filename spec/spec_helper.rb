# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'

# Capybara.javascript_driver = :webkit
Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|



  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end


# require 'spork'
# require 'simplecov'
# require 'vcr_setup'
# require 'webmock/rspec'
# require 'capybara/poltergeist'
#require 'spork/ext/ruby-debug'

# Spork.prefork do
#   SimpleCov.start do
#     add_filter '/spec/'
#     add_filter '/config/'
#     add_filter '/lib/'
#     add_filter '/vendor/'

#     add_group 'Controllers', 'app/controllers'
#     add_group 'Models', 'app/models'
#     add_group 'Helpers', 'app/helpers'
#     add_group 'Mailers', 'app/mailers'
#     add_group 'Views', 'app/views'
#   end

#   ENV["RAILS_ENV"] ||= 'test'
#   require File.expand_path("../../config/environment", __FILE__)
#   require 'rspec/rails'
#   require 'rspec/autorun'
#   require 'database_cleaner'

#   # Requires supporting ruby files with custom matchers and macros, etc,
#   # in spec/support/ and its subdirectories.
#   Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

#   RSpec.configure do |config|
#     config.include Capybara::DSL

#     config.mock_with :rspec

#     Capybara.register_driver :poltergeist do |app|
#         Capybara::Poltergeist::Driver.new(app)
#     end

#     Capybara.javascript_driver = :poltergeist

#     config.before(:suite) do
#       DatabaseCleaner.strategy = :transaction
#       DatabaseCleaner.clean_with(:truncation)
#     end

#     config.before(:each, :js => true) do
#       DatabaseCleaner.strategy = :truncation
#     end

#     config.before(:each) do
#       DatabaseCleaner.start
#     end

#     config.after(:each) do
#       DatabaseCleaner.clean
#     end
#   end
# end













# require 'rubygems'
# # require 'spork'
# # require 'simplecov'
# # require 'vcr_setup'
# # require 'webmock/rspec'
# require 'capybara/poltergeist'



#   ENV["RAILS_ENV"] ||= 'test'
#   require File.expand_path("../../config/environment", __FILE__)
#   require 'rspec/rails'
#   require 'rspec/autorun'
#   require 'database_cleaner'



#   RSpec.configure do |config|
#     config.include Capybara::DSL

#     config.mock_with :rspec

#     Capybara.register_driver :poltergeist do |app|
#         Capybara::Poltergeist::Driver.new(app)
#     end

#     Capybara.javascript_driver = :poltergeist

#     config.before(:suite) do
#       DatabaseCleaner.strategy = :transaction
#       DatabaseCleaner.clean_with(:truncation)
#     end

#     config.before(:each, :js => true) do
#       DatabaseCleaner.strategy = :truncation
#     end

#     config.before(:each) do
#       DatabaseCleaner.start
#     end

#     config.after(:each) do
#       DatabaseCleaner.clean
#     end
#   end














# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"


end