class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find_by(post_id: params[:post_id])
  end

  def update
  end

  def destroy
    @comment = Comment.find_by(post_id: params[:post_id])
    @comment.destroy
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:user_name, :datetime, :comment)
    end
end
