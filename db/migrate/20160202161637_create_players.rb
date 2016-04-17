class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.timestamp :created_at
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :sex
      t.date   :DOB
      t.string :college_major
      t.date   :year_of_graduation
      t.string :graduated?
      t.string :race
      t.string :household_size
      t.string :household_income
      t.integer :research_id
      t.float  :total_earnings, :default => 0

      t.timestamps null: false
    end
  end
end
