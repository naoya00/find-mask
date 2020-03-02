class ShopsController < ApplicationController

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to root_path, notice: 'お店情報を更新しました'
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :image, :station, :station_walk, :shop_time, :address)
  end
end
