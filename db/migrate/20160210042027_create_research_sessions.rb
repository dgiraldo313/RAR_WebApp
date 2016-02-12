class CreateResearchSessions < ActiveRecord::Migration
  def change
    drop_table :research_sessions
    create_table :research_sessions do |t|
      t.string :name
      t.text :description
      t.integer :PIN
      t.integer :player_id
      t.timestamps
    end
  end
end
