class CreateResearchesRiskBalloonGames < ActiveRecord::Migration
  def change
    create_table :researches_risk_balloon_games do |t|
      t.integer :research_id
      t.integer :risk_balloon_game_id
    end
  end
end
