class Empresa < ActiveRecord::Base
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  ##before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

@empresa = Empresa.find(1)

  
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:username,:lastname, :fechadenacimiento, :direccion, :distrito, :telefono, :dni, :diredeli, :email, :password, :password_confirmation)}
  end
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

protected
def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username,:lastname, :fechadenacimiento, :direccion, :dni, :distrito, :telefono, :diredeli, :email, :password, :password_confirmation, :remember_me) }
   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username,:lastname, :fechadenacimiento, :direccion, :dni, :distrito, :telefono, :diredeli, :email, :password, :password_confirmation, :current_password) }
end
end