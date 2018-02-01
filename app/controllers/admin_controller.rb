class AdminController < ApplicationController
  before_action :authenticate_user!, :is_Admin?
  def dashboard

  end

  private def is_Admin?
    redirect_to root_path unless current_user.role == "Admin"
  end
end
