class ApplicationController < ActionController::Base
  include Pagy::Backend
  add_flash_types :success, :error, :alert, :notice
  before_action :authenticate_user!
  before_action :store_host

  def store_host
    Thread.current[:host] = request.host
  end
end
