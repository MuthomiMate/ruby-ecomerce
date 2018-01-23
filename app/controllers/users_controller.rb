class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def new
		
	end

	def create
		# render plain: params[:register].inspect
		@post = User.new(register_params)
		@post.save
		redirect_to @users
	end

	def register_params
		params.require(:register).permit(:name, :email, :password)
	end
end
