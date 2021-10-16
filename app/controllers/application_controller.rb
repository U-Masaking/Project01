class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configuration_permitted_parameters, if: :devise_controller?

    def configuration_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

end
