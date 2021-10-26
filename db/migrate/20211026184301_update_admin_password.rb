class UpdateAdminPassword < ActiveRecord::Migration[6.1]
  def change
    change_table :admins do |t|
      t.rename :password, :password_digest
    end
  end
end
