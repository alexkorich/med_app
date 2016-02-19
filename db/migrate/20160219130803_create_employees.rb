class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :surname
      t.integer :birth_year
      t.string :position

      t.timestamps null: false
    end
  end
end
