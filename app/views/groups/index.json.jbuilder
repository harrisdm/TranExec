json.array!(@groups) do |group|
  json.extract! group, :id, :company, :name
  json.url group_url(group, format: :json)
end
