class BabyMaterialsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_baby_material, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query"
      @baby_materials = BabyMaterial.where(sql_query, query: "%#{params[:query]}%")
    else
      @baby_materials = BabyMaterial.all
    end
  end

  def show
    @sale = Sale.new
  end

  def new
    @baby_material = BabyMaterial.new
  end

  def create
    @baby_material = BabyMaterial.new(material_params)
    @baby_material.user = current_user
    if @baby_material.save
      redirect_to admin_baby_material_index_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @baby_material.update(material_params)
    redirect_to admin_baby_material_index_path
  end

  def destroy
    @baby_material.destroy
    redirect_to admin_baby_material_index_path
  end

  private

  def material_params
    params.require(:baby_material).permit(:title, :description, :address, :price, :photo)
  end

  def set_baby_material
    @baby_material = BabyMaterial.find(params[:id])
  end
end

