class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company_name

      t.timestamps null: false
    end
  end
end
