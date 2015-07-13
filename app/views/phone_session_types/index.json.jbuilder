json.array!(@phone_session_types) do |phone_session_type|
  json.extract! phone_session_type, :id, :name
  json.url phone_session_type_url(phone_session_type, format: :json)
end
