class CommentsController < ApplicationController


  def create
    @content = Content.find(params[:content_id])
    @comment = @content.comments.new(comment_params)
    if @comment.save
      redirect_to content_path(@content)
    else
      @comments = @content.comments.includes(:user)
      render "contents/show"
    end
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end
end
