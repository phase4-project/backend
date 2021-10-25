class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :engine
      t.string :horsepower
      t.float :time
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
