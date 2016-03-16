class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update,]
  before_action :logged_in_user, only: [:show, :edit, :update, :followings, :followers]
  before_action :authenticate!, only: [:edit, :update]


  def show
   @user = User.find(params[:id])
   @microposts = @user.microposts.order(created_at: :desc)
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path , notice: 'プロフィールを編集しました'
    else
      render 'edit'
    end
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def followings
    @user = User.find(params[:id])
    @followings = @user.following_users
    @followers = @user.follower_users
  end
    
  def followers
    @user = User.find(params[:id])
    @followers = @user.follower_users
    @followings = @user.following_users
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :country)
  end
  
  def user_profile
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :country)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def authenticate!
    if @user != current_user
      redirect_to root_url, flash: { dander: "不正なアクセス" }
    end
  end
  
 
end