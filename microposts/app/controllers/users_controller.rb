class UsersController < ApplicationController
  
  before_action :require_user_logged_in, only: [:index, :show, :followings, :followers]
  
  before_action :check_user, only: [:edit]
  
  
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.order("created_at DESC").page(params[:page])
    counts(@user)
  end

  def new
    @user = User.new
   
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "ユーザを登録しました"
      redirect_to @user
    else
      flash.now[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  
  end
  
  def update
  
      @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:success] = 'user は正常に更新されました'
      redirect_to @user
    else
      flash.now[:danger] = 'user は更新されませんでした'
      render :edit
    end
  end




  def followings
    @user = User.find(params[:id])
    @followings = @user.followings.page(params[:page])
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page])
    counts(@user)
  end

  def favorites
    
    @user = current_user
    @favorites = @user.hogehoges.page(params[:page])
    counts(@user)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :age)
  end
  

  
  def check_user
    if session[:user_id].to_s != params[:id].to_s
      
      flash[:danger] = '不正なアクセスです'
      @user = User.find(params[:id])
      redirect_to @user
    end
  
  end
      

  
end
