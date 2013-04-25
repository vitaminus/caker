class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.integer :manufacturer_id
      t.integer :category_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
