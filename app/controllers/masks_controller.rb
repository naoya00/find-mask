class MasksController < ApplicationController

  def new
    @mask = Mask.new
  end
   
  def create
    Mask.create(mask_params)
    redirect_to shop_path(current_shop.id)
  end

  def destroy
    mask = Mask.find(params[:id])
    mask.destroy
  end

  private
  def mask_params
    params.require(:mask).permit(:name,:image,:stock).merge(shop_id: current_shop.id)
  end

end
 