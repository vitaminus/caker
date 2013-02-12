class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer  :country_id
      t.integer  :city_id
      t.string   :title
      t.string   :url_title
      t.string   :slug

      t.timestamps
    end
  end
end
