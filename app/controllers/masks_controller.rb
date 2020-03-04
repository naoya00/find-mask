class MasksController < ApplicationController

  def create
    Mask.create(mask_params)
  end

  private
  def mask_params
    params.require(:mask).permit(:name,:image,:stock).merge(shop_id: current_shop.id)
  end

end
