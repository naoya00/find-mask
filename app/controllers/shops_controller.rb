class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @masks = @shop.masks.includes(:shop).order(updated_at: :desc)
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to shop_path(shop.id), notice: 'お店情報を更新しました'
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :image, :station, :station_walk, :shop_time, :address,:shop_holiday)
  end
end
