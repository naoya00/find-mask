class PostsController < ApplicationController

  def index
    @posts = Post.order(updated_at: :desc).limit(15).includes(:shop)
  end

  def new
   @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render :create
    else
      redirect_to new_shop_post_path(@post.shop.id), notice: '投稿内容は空では登録できません。'
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:content).merge(shop_id: current_shop.id)
  end

end
 