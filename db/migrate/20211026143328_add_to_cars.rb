class AddToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :user_id, :integer
    add_column :cars, :admin_id, :integer
  end
end
