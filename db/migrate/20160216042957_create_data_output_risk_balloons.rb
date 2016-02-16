class CreateDataOutputRiskBalloons < ActiveRecord::Migration
  def change
    create_table :data_output_risk_balloons do |t|
      t.integer  :player_id
      t.integer  :risk_balloon_game_id
      t.boolean  :popped?
      t.integer  :inflation_level
      t.float    :earnings
      t.integer  :turns_taken
      t.time     :time_played

      t.timestamps
    end
  end
end
