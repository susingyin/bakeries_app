class AddIndexReviewsOnProductId < ActiveRecord::Migration
  def change
  	add_index :reviews, :product_id
  end
end
