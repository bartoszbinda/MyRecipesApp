class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
