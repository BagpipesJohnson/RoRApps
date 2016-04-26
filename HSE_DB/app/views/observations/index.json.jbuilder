json.array!(@observations) do |observation|
  json.extract! observation, :id, :description, :customer_id, :observation_date, :business_unit_id, :employee_observer_id, :region_id, :feedback_comments, :service_center_id, :observation_type_id
  json.url observation_url(observation, format: :json)
end
