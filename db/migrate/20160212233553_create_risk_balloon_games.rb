class CreateRiskBalloonGames < ActiveRecord::Migration
  def change
    create_table :risk_balloon_games do |t|
      t.integer  :inflation_rate
      t.integer :max_inflation
      t.integer :cash_multiplier
      t.string :balloon_color
      t.timestamps
    end
  end
end
