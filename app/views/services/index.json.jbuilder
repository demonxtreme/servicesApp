json.array!(@services) do |service|
  json.extract! service, :id, :customer_id, :name, :service_type, :description, :latitude, :longitude
  json.url service_url(service, format: :json)
end
