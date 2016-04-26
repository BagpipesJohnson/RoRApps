class CreateDefenseResponses < ActiveRecord::Migration
  def change
    create_table :defense_responses do |t|
      t.references :observation, index: true, foreign_key: true
      t.references :defense, index: true, foreign_key: true
      t.string :response

      t.timestamps null: false
    end
  end
end
