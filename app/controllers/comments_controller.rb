class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    if @comment.save!
      redirect_to post_path(@post), notice: "Comment successfuly created."
    else
      redirect_to post_path(@post), alert: "Failed to create your post."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post), notice: "Your comment was successfully deleted."
  end
  
  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
