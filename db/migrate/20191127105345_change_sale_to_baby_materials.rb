class ChangeSaleToBabyMaterials < ActiveRecord::Migration[5.2]
  def change
    change_column :baby_materials, :sale, :boolean, default: false
  end
end
