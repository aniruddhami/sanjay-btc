class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!,:configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
  stored_location_for(resource) || root_path
  end
  #   after login to user page
  def after_sign_in_path_for(resource)
	 stored_location_for(resource) || root_path
  end
  

  # customise devise add more fields
  protected
	def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username,:mobile,:f_name,:l_name,:m_name,:address,:city,:state,:addhar,:pan,:account_no,:balance,:email, :password)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username,:mobile,:f_name,:l_name,:m_name,:address,:city,:state,:addhar,:pan, :email,:account_no,:balance, :password, :current_password)}
    end
end
