class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string  :name
      t.string  :phone1
      t.string  :phone2

      t.timestamps
    end
  end
end
