class PostsController < ApplicationController
  #def index
  #  @post = Post.all
  #end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      # redirect_to posts_path
      redirect_to post_path(@post)
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
end