class RenameTables < ActiveRecord::Migration
  def change
    rename_table :research_sessions, :research
    rename_table :players_research_sessions, :players_researchs
  end
end
