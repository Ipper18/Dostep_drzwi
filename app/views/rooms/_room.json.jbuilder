json.extract! room, :id, :room_name, :description, :created_at, :updated_at
json.url room_url(room, format: :json)
