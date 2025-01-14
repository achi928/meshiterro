class ApplicationController < ActionController::Base
  
  ## devise利用の機能が使われる前にconfigure_permitted_parametersしてくれる。
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    post_images_path
  end


  def after_sign_out_path_for(resource)
    about_path
  end

  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
