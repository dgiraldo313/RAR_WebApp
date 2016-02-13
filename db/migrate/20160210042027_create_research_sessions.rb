class CreateResearchSessions < ActiveRecord::Migration
  def change
    create_table :research_sessions do |t|
      t.string :name
      t.text :description
      t.integer :PIN
      t.integer :player_id
      t.timestamps
    end
  end
end
