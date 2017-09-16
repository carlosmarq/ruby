class CreateProductTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_types do |t|
      t.string :flower_type
      t.integer :quantity
      
      t.timestamps
    end
  end
end
