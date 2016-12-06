class PagesController < ApplicationController
  def index
    if current_user and current_user.admin?
      redirect_to admin_users_path
    end
  end
end
