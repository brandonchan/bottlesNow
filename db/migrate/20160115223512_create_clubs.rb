class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :logo
      t.string :city
      t.string :address
      t.string :zip
      t.string :state
      t.string :latitude
      t.string :longitude
      t.string :description
      t.timestamps null: false
    end
  end
end
