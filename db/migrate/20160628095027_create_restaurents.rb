class CreateRestaurents < ActiveRecord::Migration
  def change
    create_table :restaurents do |t|

      t.string :restaurant_name
      t.integer :review_count
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :state
      t.integer :zip_code
      t.float :rating 
      t.timestamps
    end
  end
end
