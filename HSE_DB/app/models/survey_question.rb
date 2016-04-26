class SurveyQuestion < ActiveRecord::Base
	has_many :survey_question_responses
end
