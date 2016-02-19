class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.references :employee
      t.references :hospital, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
