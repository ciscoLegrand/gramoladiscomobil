class ApplicationController < ActionController::Base
  add_flash_types :success, :error, :alert, :notice
  before_action :authenticate_user!
end
