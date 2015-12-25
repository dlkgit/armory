json.array!(@gun_actions) do |gun_action|
  json.extract! gun_action, :id, :action_type
  json.url gun_action_url(gun_action, format: :json)
end
