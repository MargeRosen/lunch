class CreateMyLunches < ActiveRecord::Migration
  def change
    create_table :my_lunches do |t|
      t.string :meal
      t.integer :bu
      t.float :cost

      t.timestamps
    end
  end
end
