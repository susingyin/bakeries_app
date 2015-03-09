class AddReviewToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :review_id, :integer
  end
end
