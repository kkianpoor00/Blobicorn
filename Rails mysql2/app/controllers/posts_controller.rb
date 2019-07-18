class PostsController < ApplicationController

  before_action :confirm_logged_in

  def index
    @posts = Post.sorted
  end

  def show
    @chosen_post = Post.find_by_id(params[:id])
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
    @chosen_post = Post.find_by_id(params[:id])
    @user = EfUser.find(@chosen_post.ef_user_id)

    #the user cannot change the information of other accounts's posts
    if(session[:user_id] != @user.id)
      redirect_to(users_path)
    end
  end

  def update
    @chosen_post = Post.find_by_id(params[:id])
    @user = EfUser.find(session[:user_id])
    if @chosen_post.update_attributes(post_info_params)
      redirect_to(users_path(@users))
    else
      render('edit')
    end
  end

  def delete
    @chosen_post = Post.find_by_id(params[:id])
    @user = EfUser.find(@chosen_post.ef_user_id)

    #the user cannot delete the information of other accounts's posts
    if(session[:user_id] != @user.id)
      redirect_to(users_path)
    end
  end

  def destroy
    @chosen_post = Post.find_by_id(params[:id])
    @chosen_post.destroy
    redirect_to(users_path)
  end

  private

  def post_info_params
    params.require(:post).permit( :user_id, :title, :category, :kindOfPost, :details)
  end

end
