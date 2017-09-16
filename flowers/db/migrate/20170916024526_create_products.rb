class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :store_id
      t.integer :product_type_id
      t.timestamps
    end
    add_foreing_key :products, :stores
    add_foreing_key :products, :product_types

  end
end
