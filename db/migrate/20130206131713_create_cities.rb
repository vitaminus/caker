class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :country_id
      t.string :title
      t.string :url_title
      t.string :slug

      t.timestamps
    end
  end
end
