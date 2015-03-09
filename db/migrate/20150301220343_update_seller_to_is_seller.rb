class UpdateSellerToIsSeller < ActiveRecord::Migration
  def change
  	rename_column :users, :seller, :is_seller
  end
end
