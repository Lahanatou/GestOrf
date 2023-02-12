class ApplicationController < ActionController::Base
  #before_action :check_admin, only: [:edit, :create, :update, :destroy]

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
  #   def check_admin
  #   unless current_user.admin
  #       redirect_to '/', :alert => "Don't have permission!"
  #   end
  # end
  end
