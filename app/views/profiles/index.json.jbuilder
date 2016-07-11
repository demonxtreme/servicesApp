json.array!(@profiles) do |profile|
  json.extract! profile, :id, :services_id, :img_url
  json.url profile_url(profile, format: :json)
end
