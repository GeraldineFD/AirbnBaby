class Admin::BabyMaterialsController < ApplicationController
  def index
    @baby_materials = current_user.baby_materials
  end
end
