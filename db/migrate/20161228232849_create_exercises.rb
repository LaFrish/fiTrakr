class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :exercise_item
      t.integer :calories_burned
      t.timestamps
    end
  end
end
