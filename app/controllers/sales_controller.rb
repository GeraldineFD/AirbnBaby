class SalesController < ApplicationController

  def create

    @sale = Sale.new
    @baby_material = BabyMaterial.find(params[:baby_material_id])
    @sale.baby_material = @baby_material
    @sale.user = current_user
    if @sale.save
      redirect_to admin_baby_material_index_path
    else
      render 'baby_materials/show'
    end
  end
end
