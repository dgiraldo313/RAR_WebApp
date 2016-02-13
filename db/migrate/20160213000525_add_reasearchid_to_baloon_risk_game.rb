class AddReasearchidToBaloonRiskGame < ActiveRecord::Migration
  def change
    add_column :risk_balloon_games, :research_id, :integer
  end
end
