class ApplicationController < ActionController::Base # rubocop:todo Style/Documentation
  before_action :authenticate_user!
end
