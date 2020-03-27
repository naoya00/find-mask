class CommentsController < ApplicationController

  def index
    @comments = Comment.all.order(updated_at: :desc).page(params[:page]).per(5)
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      respond_to do |format|
        format.json
      end
    else
      @comments = Comment.all.order(updated_at: :desc).page(params[:page]).per(5)
      flash.now[:alert] = '空の値があります'
      render :index
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:nickname,:text)
  end

end
