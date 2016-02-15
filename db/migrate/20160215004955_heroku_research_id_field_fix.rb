class HerokuResearchIdFieldFix < ActiveRecord::Migration
  def change
    add_column :players, :research_id, :integer
  end
end
