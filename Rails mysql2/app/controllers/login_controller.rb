class LoginController < ApplicationController

  before_action :confirm_logged_in, :except => [:login_user, :attempt_login, :logout]

  def login_user
  end

  def inside
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      user = EfUser.where(:email => params[:username]).first
      if user
        authorized_user = user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      redirect_to(users_path)
    else
      flash.now[:notice] = "invalid email/password."
      render(login_login_user_path)
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'Logged out successfully'
    redirect_to(login_login_user_path)
  end




end
