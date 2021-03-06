class MasksController < ApplicationController

  def new
    @mask = Mask.new
  end
   
  def create
    @mask = Mask.new(mask_params)
    if @mask.save
      render :create
    else
      redirect_to new_shop_mask_path(@mask.shop.id), notice: '全ての項目を入力してください。'
    end
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
 