# Edited 4/15/2020 by Alli Hornyak: add method for Home
# Edited 4/21/2020 by Tze Hei Tam: adding permitted parameters

class ApplicationController < ActionController::Base
  respond_to :html, :json
    
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :phone_num])
    devise_parameter_sanitizer.permit(:account_update, keys: [:f_name, :l_name, :phone_num, :password, :password_confirmation])
  end
end
