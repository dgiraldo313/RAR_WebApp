class CreateRiskBalloonGamesTable < ActiveRecord::Migration
  def change
    create_table :risk_balloon_games do |t|
      t.float   :initial_cash,    default: 0.10
      t.integer :max_inflation,   default: 10
      t.float   :cash_increment,  default: 0.01
      t.string  :balloon_color,   default: "ff0000"
      t.integer :pixel_rate,      default: 10
      t.integer :inflation_rate,  default: 1
      t.integer :research_id
      t.timestamps
    end
  end
end
