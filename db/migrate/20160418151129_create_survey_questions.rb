class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.string :question_text

      t.timestamps null: false
    end
  end
end
