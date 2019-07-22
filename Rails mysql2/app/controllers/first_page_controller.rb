class FirstPageController < ApplicationController

  before_action :confirm_logged_in, :except => [:index, :searchedIndex]

  def index
    @wantedPost = Post.new
    @posts = Post.sorted
    if session[:user_id]
      redirect_to(users_path)
    else
      render('index')
    end
  end


  def searchedIndex
    @posts = Post.where("title LIKE ?", "%#{params[:post][:title]}%")
    @user = EfUser.find_by_id(session[:user_id])
  end


end
