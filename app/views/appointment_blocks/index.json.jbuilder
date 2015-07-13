json.array!(@appointment_blocks) do |appointment_block|
  json.extract! appointment_block, :id, :workshop_id, :password_digest, :active
  json.url appointment_block_url(appointment_block, format: :json)
end
