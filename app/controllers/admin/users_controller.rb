class Admin::UsersController < Admin::AdminController
  def index
    @users = User.user
  end
end
