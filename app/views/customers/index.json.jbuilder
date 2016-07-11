json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :lastname, :address, :country, :city, :postal_code, :phone, :birthday
  json.url customer_url(customer, format: :json)
end
