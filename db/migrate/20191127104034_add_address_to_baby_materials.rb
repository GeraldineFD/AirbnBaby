class AddAddressToBabyMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :baby_materials, :address, :string
  end
end
