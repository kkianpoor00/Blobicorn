class PostsController < ApplicationController

  before_action :confirm_logged_in

  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @user = EfUser.find_by_id(session[:user_id])
    puts @user.id
    @post = @user.posts.new(post_info_params)
    if @post.save
      redirect_to(users_path)
    else
      render('new')
    end

  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def post_info_params
    params.require(:post).permit( :user_id, :title, :category, :kindOfPost, :details)
  end

end
