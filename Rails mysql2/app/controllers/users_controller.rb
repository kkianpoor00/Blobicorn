class UsersController < ApplicationController

  before_action :confirm_logged_in

  def index
    @users = EfUser.sorted
    @user = EfUser.find_by_id(session[:user_id])
  end

  def show
    @user = EfUser.find(params[:id])
  end

  def new
    @user = EfUser.new
  end

  def create
    @user = EfUser.new(user_params)
    #to access all data
    # if @user.save
    #   redirect_to(users_path)
    # else
    #   render('new')
    # end

    #to just get to login page
    if @user.save
      redirect_to(user_path(@user))
    else
      render('new')
    end
  end

  def edit
    @user = EfUser.find(params[:id])

    #the user cannot change the information of other accounts
    if(session[:user_id] != @user.id)
      redirect_to(users_path)
    end
  end

  def update
    @user = EfUser.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to(users_path(@users))
    else
      render('edit')
    end
  end

  def delete
    @user = EfUser.find(params[:id])
    if(session[:user_id] != @user.id)
      redirect_to(users_path)
    end
  end

  def destroy
    @user = EfUser.find(params[:id])
    @user.destroy
    redirect_to(users_path)
  end

  private

  def user_params
    params.require(:ef_user).permit(:first_name, :last_name, :email, :password)
  end
end
