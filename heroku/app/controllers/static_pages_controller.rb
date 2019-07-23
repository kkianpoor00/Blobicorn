class StaticPagesController < ApplicationController
  def home
    @posts = Post.order("created_at DESC")
  end

  def help
  end

  def about
  end

  def contact
  end
end
