class CreateAdminLogins < ActiveRecord::Migration
  def change
    create_table :admin_logins do |t|
      t.string "username"
      t.string "password"
      t.string "type"

      t.timestamps
    end
  end
end
