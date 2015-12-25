json.array!(@powder_types) do |powder_type|
  json.extract! powder_type, :id, :name
  json.url powder_type_url(powder_type, format: :json)
end
