class RemoveRatingFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :rating, :integer
  end
end
