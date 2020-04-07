class CommentsController < ApplicationController

  def index
    @comments = Comment.order(created_at: "DESC").all.page(params[:page]).per(8)
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      respond_to do |format|
        format.json
      end
    else
      @comments = Comment.all.order(updated_at: :desc).page(params[:page]).per(8)
      flash.now[:alert] = '空の値があります'
      render :index
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:nickname,:text)
  end

end
