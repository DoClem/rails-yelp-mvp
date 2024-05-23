class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.integer :phone_number
      t.string :category
      t.text :content

      t.timestamps
    end
  end
end
