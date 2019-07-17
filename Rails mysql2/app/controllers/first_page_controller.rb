class FirstPageController < ApplicationController


  def index
    @posts = Post.sorted
    render('index')
  end

  def contactUs
  end


end
