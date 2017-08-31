class CommentsController < ApplicationController
  def index
    @user = @current_user
    @post = Post.find params[:post_id]
    @user_post = @post.user
    @comment = Comment.new
    render :index, :layout => false
  end

  def create
    @comment = Comment.new comment_params
    @current_user.comments << @comment
    @comment.user_id = @current_user.id
    @post = Post.find params[:post_id]
    @post.comments << @comment
    @comment.save
    if @comment.save
      redirect_to request.referrer || root_path
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:message)
  end

end
