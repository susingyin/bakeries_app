class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :photo
      t.string :ingredients

      t.timestamps null: false
    end
  end
end
