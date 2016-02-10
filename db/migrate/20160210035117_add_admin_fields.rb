class AddAdminFields < ActiveRecord::Migration
  def change
    #basic admin info
    add_column :admins, :first_Name, :string
    add_column :admins, :last_Name, :string
    add_column :admins, :admin?, :boolean, :default => true
  end
end
