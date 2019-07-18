class FirstPageController < ApplicationController


  def index
    @posts = Post.sorted
    if session[:user_id]
      redirect_to(users_path)
    else
      render('index')
    end
  end

  def contactUs
  end


end
