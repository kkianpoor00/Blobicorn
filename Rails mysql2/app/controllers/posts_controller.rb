class PostsController < ApplicationController

  before_action :confirm_logged_in, :except => [:show]

  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_info_params)
    @post.user_id = session[:user_id]
    puts @post.user_id
    if @post.save
      redirect_to(post_path(@post))
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
    params.require(:post).permit(:title => params[:title],
      :category => params[:category],
      :kindOfPost => params[:kindOfPost] ,
      :details => params[:details])

  end

end
