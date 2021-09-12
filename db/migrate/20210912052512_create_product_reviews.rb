class CreateProductReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :product_reviews do |t|
      t.string :comment
      t.integer :stars

      t.timestamps
    end
  end
end
