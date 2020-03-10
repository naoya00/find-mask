class PostsController < ApplicationController

  def index
    @posts = Post.order(updated_at: :desc).limit(15).includes(:shop)
  end

  def new
   @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  private
  
  def post_params
    params.require(:post).permit(:content).merge(shop_id: current_shop.id)
  end

end
 