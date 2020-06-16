class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:id])
    if @user.save
      #flash[:success] = "ユーザーの登録が完了しました。"
      redirect_to @user
    else
      render :new
    end
  end
  
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :belongs, :password, :password_confirmation)
    end
end
