ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'capybara/rails'
#Capybara.default_driver = :selenium

DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  def setup
    DatabaseCleaner.start
  end
  def teardown
    DatabaseCleaner.clean
  end
end

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  self.use_transactional_fixtures = false
end


# module DatabaseCleaner
# 	def before_setup
# 	  super
# 	  Task.destroy_all
# 	end
# end