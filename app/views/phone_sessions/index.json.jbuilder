json.array!(@phone_sessions) do |phone_session|
  json.extract! phone_session, :id, :client_id, :phone_session_type_id, :phone, :reminder, :email, :user_id
  json.url phone_session_url(phone_session, format: :json)
end
