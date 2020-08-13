class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username fname lname image])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[username fname lname image])
  end
end
