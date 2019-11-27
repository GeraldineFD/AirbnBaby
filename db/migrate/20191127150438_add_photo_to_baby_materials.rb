class AddPhotoToBabyMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :baby_materials, :photo, :string
  end
end
