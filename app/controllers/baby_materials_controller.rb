class BabyMaterialsController < ApplicationController

  def index
    @baby_materials = BabyMaterial.all
  end

  def show
    @baby_material = BabyMaterial.find(params[:id])
  end

  def new
    @baby_material = BabyMaterial.new
  end

  def create
    @baby_material = BabyMaterial.new(material_params)
    if @baby_material.save
      redirect_to baby_material_path(@baby_material)
    else
      render 'new'
    end
  end

  private

  def material_params
    params.require(:baby_material).permit(:title, :descrition, :price, :rating)
  end
end

