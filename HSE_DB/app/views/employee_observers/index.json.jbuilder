json.array!(@employee_observers) do |employee_observer|
  json.extract! employee_observer, :id, :region_id, :first_name, :last_name
  json.url employee_observer_url(employee_observer, format: :json)
end
