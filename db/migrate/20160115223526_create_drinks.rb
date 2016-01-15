class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :drink
      t.string :price
      t.belongs_to :clubs


      t.timestamps null: false
    end
  end
end
