class AddTotalEarningsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :total_earnings, :float, :default => 0
  end
end
