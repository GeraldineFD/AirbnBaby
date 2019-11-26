class CreateBabyMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_materials do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.boolean :sale
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
