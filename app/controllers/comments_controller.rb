class CommentsController < ApplicationController

  def index
    @comments = Comment.all.order(updated_at: :desc).limit(10)
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to comments_path  }
      format.json
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:nickname,:text)
  end


end
