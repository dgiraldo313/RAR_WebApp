class AddPlayersResearchSessionTable < ActiveRecord::Migration
  def change
    create_table :players_research_sessions, :id => false, :force => true do |t|
      t.integer :player_id
      t.integer :research_session_id
    end
  end
end
