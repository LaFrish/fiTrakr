class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.integer :weight
      t.integer :water_intake
      t.integer :daily_calories
      t.integer :daily_workout

      t.timestamps
    end
  end
end
