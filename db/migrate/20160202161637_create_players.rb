class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :PlayerID
      t.timestamp :created_at
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :gender
      t.date :DOB
      t.string :education_level
      t.string :race
      t.string :household_size
      t.string :household_income

      t.timestamps null: false
    end
  end
end
