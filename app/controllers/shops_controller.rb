class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :show,:update]

  def index
    @shops = Shop.page(params[:page]).per(5)
  end

  def show
    @masks = @shop.masks.includes(:shop).order(updated_at: :desc)
  end

  def edit;end

  def update
    @shop.update(shop_params)
    redirect_to shop_path(@shop.id), notice: 'お店情報を更新しました'
  end

  def search
    shopall = Shop.search(params[:keyword])
    @shops = []
    shopall.each do |shop|
      if shop.masks.length >= 1
        @shops << shop
      end
    end
     
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :image, :station, :station_walk, :shop_time, :address,:shop_holiday)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
  
end
