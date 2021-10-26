class AddAdminIdToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :admin_id, :integer
  end
end
