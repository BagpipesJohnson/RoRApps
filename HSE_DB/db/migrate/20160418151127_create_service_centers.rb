class CreateServiceCenters < ActiveRecord::Migration
  def change
    create_table :service_centers do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
