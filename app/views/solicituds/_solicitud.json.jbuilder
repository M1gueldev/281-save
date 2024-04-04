json.extract! solicitud, :id, :voluntario_id, :organizacion_benefica_id, :inventario_id, :user_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
