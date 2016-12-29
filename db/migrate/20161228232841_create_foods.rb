class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :meal
      t.string :food_item
      t.integer :calories
      t.timestamps
    end
  end
end
