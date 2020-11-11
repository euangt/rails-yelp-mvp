class AddRestaurantReferenceToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :restaurants, :review
  end
end
