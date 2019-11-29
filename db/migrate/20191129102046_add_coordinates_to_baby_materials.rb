class AddCoordinatesToBabyMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :baby_materials, :latitude, :float
    add_column :baby_materials, :longitude, :float
  end
end
