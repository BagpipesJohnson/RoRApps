json.array!(@service_centers) do |service_center|
  json.extract! service_center, :id, :description
  json.url service_center_url(service_center, format: :json)
end
