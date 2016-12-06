class UsersController < ApplicationController

    def destroy
      @user = User.find(params[:id])
      if @user.delete
        flash[:success] = 'Delete successfully'
        redirect_to admin_users_path
      end
    end
end
