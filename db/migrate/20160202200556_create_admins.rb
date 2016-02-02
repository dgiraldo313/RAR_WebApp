class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :AdminID
      t.timestamp :created_at
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.date :DOB
      t.string :username
      t.string :password
      
      t.timestamps null: false
    end
  end
end
