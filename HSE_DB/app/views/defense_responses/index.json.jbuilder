json.array!(@defense_responses) do |defense_response|
  json.extract! defense_response, :id, :observation_id, :defense_id, :response
  json.url defense_response_url(defense_response, format: :json)
end
