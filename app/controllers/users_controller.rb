class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
        flash[:success] = "Thanks for signing up"
  	   redirect_to root_path
     else
      flash[:error] = "Oops, try again..."
      render :new
    end
  end

  def edit
  end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
end