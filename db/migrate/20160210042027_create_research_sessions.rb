class CreateResearchSessions < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :name
      t.text :description
      t.integer :PIN
      t.integer :player_id
      t.timestamps
    end
    add_index :researches, :PIN, :unique => true
  end


end
