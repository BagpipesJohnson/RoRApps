json.array!(@observation_types) do |observation_type|
  json.extract! observation_type, :id, :description
  json.url observation_type_url(observation_type, format: :json)
end
