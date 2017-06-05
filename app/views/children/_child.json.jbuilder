json.extract! child, :id, :name, :photo, :created_at, :updated_at
json.url child_url(child, format: :json)
