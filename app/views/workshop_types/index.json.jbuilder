json.array!(@workshop_types) do |workshop_type|
  json.extract! workshop_type, :id, :name
  json.url workshop_type_url(workshop_type, format: :json)
end
