class BabyMaterialsController < ApplicationController
  before_action :set_baby_material, only: [:show, :edit, :update, :destroy]
  def index
    @baby_materials = BabyMaterial.all
  end

  def show; end

  def new
    @baby_material = BabyMaterial.new
  end

  def create
    @baby_material = BabyMaterial.new(material_params)
    @baby_material.user = current_user
    if @baby_material.save
      redirect_to baby_material_path(@baby_material)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    @baby_material.update(material_params)
    redirect_to baby_material_path
  end

  def destroy
    @baby_material.destroy
    redirect_to baby_materials_path
  end

  private

  def material_params
    params.require(:baby_material).permit(:title, :description, :price)
  end

  def set_baby_material
    @baby_material = BabyMaterial.find(params[:id])
  end
end
