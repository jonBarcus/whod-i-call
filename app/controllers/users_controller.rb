class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Account Created Successfully"
      redirect_to("/")
    else
      flash[:notice] = "Account Not Created, Please Try Again"
      render(:new)
    end
  end



  private

    def user_params
      params.require(:user).permit(
        :email,
        :name,
        :password,
        :password_confirmation
        )


    end



end
