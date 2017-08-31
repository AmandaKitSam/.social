class PostsController < ApplicationController
  def index
    @posts = Post.all
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.save
    redirect_to posts_path
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to posts_path
  end

  def show
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to posts_path
  end

  def post_params
    params[:post].permit(:dateOfPost, :reply)
  end

end
