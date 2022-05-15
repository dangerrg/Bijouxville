class ApplicationController < ActionController::Base
  before_action :authenticate_jeweler!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def ensure_admin
    redirect_to root_path, alert: 'You are not authorized to perform this action' unless current_jeweler.role == 'admin'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role])
  end
end
