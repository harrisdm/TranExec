json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :datetime, :location, :workshop_type_id, :project_id
  json.url workshop_url(workshop, format: :json)
end
