class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :description
      t.references :customer, index: true, foreign_key: true
      t.datetime :observation_date
      t.references :business_unit, index: true, foreign_key: true
      t.references :employee_observer, index: true, foreign_key: true
      t.references :region, index: true, foreign_key: true
      t.string :feedback_comments
      t.references :service_center, index: true, foreign_key: true
      t.references :observation_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
