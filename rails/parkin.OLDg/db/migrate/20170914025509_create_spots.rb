class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|

      t.timestamps
    end
  end
end
