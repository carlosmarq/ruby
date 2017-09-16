class CreateWorkshifts < ActiveRecord::Migration[5.1]
  def change
    create_table :workshifts do |t|

      t.timestamps
    end
  end
end
