json.array!(@gun_types) do |gun_type|
  json.extract! gun_type, :id, :name
  json.url gun_type_url(gun_type, format: :json)
end
