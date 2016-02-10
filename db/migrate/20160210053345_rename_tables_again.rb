class RenameTablesAgain < ActiveRecord::Migration
  def change
    rename_table :research, :researches
    rename_table :players_researchs, :players_researches
  end
end
