class AddIndexReviewIdToProducts < ActiveRecord::Migration
  def change
	add_index :products, :review_id
  end
end
