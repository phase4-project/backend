class AddCarIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :car_id, :integer
  end
end
