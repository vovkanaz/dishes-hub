class UsersController < ApplicationController

  def new
   @user = User.new
 end

 def create
   @user = User.new(user_params)
   if @user.save
     redirect_to user_profile_path, notice: 'You signed up successfully'
   else
     render 'new'
   end
 end

  def profile
  end

  private

 def user_params
   params.fetch(:user).permit(:login, :email, :password, :password_confirmation)
end
end
