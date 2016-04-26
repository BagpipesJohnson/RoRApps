json.array!(@survey_question_responses) do |survey_question_response|
  json.extract! survey_question_response, :id, :observation_id, :survey_question_id, :response
  json.url survey_question_response_url(survey_question_response, format: :json)
end
