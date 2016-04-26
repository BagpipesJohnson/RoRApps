class CreateSurveyQuestionResponses < ActiveRecord::Migration
  def change
    create_table :survey_question_responses do |t|
      t.references :observation, index: true, foreign_key: true
      t.references :survey_question, index: true, foreign_key: true
      t.string :response

      t.timestamps null: false
    end
  end
end
