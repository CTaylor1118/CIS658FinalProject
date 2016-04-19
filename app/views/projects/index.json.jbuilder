json.array!(@projects) do |project|
  json.extract! project, :id, :version, :name, :image
  json.url project_url(project, format: :json)
end
