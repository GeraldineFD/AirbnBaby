class Admin::BabyMaterialsController < ApplicationController
  def index
    @baby_materials = current_user.baby_materials
    @rented = []
    current_user.sales.each do |sale|
      @rented.push(sale.baby_material)
    end


  end
end
