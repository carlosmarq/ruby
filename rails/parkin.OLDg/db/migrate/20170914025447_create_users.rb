class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
        t.string :type
        t.string :goc_id
        t.name   :name
        t.string :email
        t.timestamps
  end
  end
  add_index :users, :email, unique: true
end
