json.array!(@guns) do |gun|
  json.extract! gun, :id, :manufacturer_id, :model, :gun_type_id, :serial_number, :year, :barrel_length, :bore_size, :powder_type_id, :date_acquired, :notes
  json.url gun_url(gun, format: :json)
end
