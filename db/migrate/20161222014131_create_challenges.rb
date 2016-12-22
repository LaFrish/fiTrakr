class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :challenge_name, index: true, foreign_key: true
    end
  end
end
