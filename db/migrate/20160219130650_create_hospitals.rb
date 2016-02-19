class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.integer :order_number

      t.timestamps null: false
    end
  end
end
