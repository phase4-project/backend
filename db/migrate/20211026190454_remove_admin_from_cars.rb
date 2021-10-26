class RemoveAdminFromCars < ActiveRecord::Migration[6.1]
  def change
    change_table :cars do |t|
      t.rename :admin_id, :user_id
    end
  end
end
