class SurveyQuestionResponse < ActiveRecord::Base
  belongs_to :observation
  belongs_to :survey_question
  
end
