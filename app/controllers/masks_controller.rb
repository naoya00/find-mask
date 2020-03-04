class MasksController < ApplicationController

  def new
    @mask = Mask.new
  end
   
  def create
    Mask.create(mask_params)
    redirect_to 
  end

  private
  def mask_params
    params.require(:mask).permit(:name,:image,:stock).merge(shop_id: current_shop.id)
  end

end
 