class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action  :configure_permitted_parameters, if: :devise_controller?

	protected

  	def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
  	end

   def after_sign_in_path_for(resource)
   	stored_location_for(resource)
   	admin_index_path unless current_user.role == "user"
   end

   # def after_sign_out_path_for(resource)
   # 	redirect_to root_path
   # end
end
