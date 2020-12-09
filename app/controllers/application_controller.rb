class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    # pour changer la redirect_to de devise après le login
    def after_sign_in_path_for(resource)
        root_path
    end
    

    protected

    def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name,:last_name, :location, :role, :avatar  ])
     devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name,:last_name, :location, :role, :password, :password_confirmation,:current_password, :avatar   ])
    
    end


end
