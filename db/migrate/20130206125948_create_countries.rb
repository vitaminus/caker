class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :title
      t.string :url_title
      t.string :slug

      t.timestamps
    end
  end
end
