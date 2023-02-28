# If SimpleCov starts after your application code is already loaded (via require), it won't be able to track your files and their coverage!
# The SimpleCov.start must be issued before any of your application code is required!
require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  # ...

  # Devise setup
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  ################ added ################
  setup do
    # load sign in
    get "/users/sign_in"

    # use devise helper
    sign_in(users(:one))
    post user_session_url
  end

  # ...
end
