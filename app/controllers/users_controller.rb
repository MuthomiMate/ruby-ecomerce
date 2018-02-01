class UsersController < ApplicationController
	# before_action :is_user?
	def index

	end

	private def is_user?
		redirect_to admin_index_path unless current_user.role == "user"
	end

end
