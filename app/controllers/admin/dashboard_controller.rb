class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin
  layout 'admin'
  def index; end

  private
  def ensure_admin
    unless current_user.admin?
      redirect_to root_path, alert: "No tienes permisos para acceder a esta sección"
    end
  end
end