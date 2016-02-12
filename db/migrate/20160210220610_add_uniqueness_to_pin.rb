class AddUniquenessToPin < ActiveRecord::Migration
  def change
    add_index :researches, :PIN, :unique => true
  end
end
