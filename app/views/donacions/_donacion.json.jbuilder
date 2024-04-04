json.extract! donacion, :id, :producto_id, :alimento_id, :solicitud_id, :created_at, :updated_at
json.url donacion_url(donacion, format: :json)
