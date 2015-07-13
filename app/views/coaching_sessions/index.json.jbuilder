json.array!(@coaching_sessions) do |coaching_session|
  json.extract! coaching_session, :id, :user_id, :workshop_id
  json.url coaching_session_url(coaching_session, format: :json)
end
