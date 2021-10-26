class RemoveUserIdFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :user_id
    remove_column :cars, :admin_id
  end
end
