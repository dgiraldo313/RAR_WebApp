class FixPlayersTable < ActiveRecord::Migration
  def change
    # add_column :players, :research_id, :integer
    remove_column :players, :PlayerID
  end
end
