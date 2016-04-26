class CreateEmployeeObservers < ActiveRecord::Migration
  def change
    create_table :employee_observers do |t|
      t.references :region, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
