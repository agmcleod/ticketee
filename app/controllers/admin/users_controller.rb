class Admin::UsersController < Admin::BaseController
  before_filter :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all(order: "email")
  end

  def new
    @user = User.new
  end

  def create
    is_admin = params[:user].delete(:admin) == "1"
    @user = User.new(params[:user])
    @user.admin = is_admin
    if @user.save
      flash[:notice] = "User has been created."
      redirect_to admin_users_path
    else
      flash[:alert] = "User has not been created."
      render action: "new"
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    params[:user].delete(:password) if params[:user][:password].blank?

    is_admin = params[:user].delete(:admin) == "1"
    @user.admin = is_admin
    if @user.update_attributes(params[:user])
      flash[:notice] = "User has been updated."
      redirect_to admin_users_path
    else
      flash[:alert] = "User has not been updated."
      render action: "edit"
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
