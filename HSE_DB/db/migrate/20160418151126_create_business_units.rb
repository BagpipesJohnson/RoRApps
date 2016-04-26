class CreateBusinessUnits < ActiveRecord::Migration
  def change
    create_table :business_units do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
