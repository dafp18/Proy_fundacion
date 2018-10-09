class ApplicationController < ActionController::Base
    before_action :config_devise_param, if: :devise_controller?

    def config_devise_param
        devise_parameter_sanitizer.permit(:sign_up) do |user|
            user.permit(:nombre, :email, :password, :password_confirmation)
        end    
    end    
end
