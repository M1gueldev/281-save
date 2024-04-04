json.extract! inventario, :id, :elementos, :cantidad, :ubicacion, :fecha, :created_at, :updated_at
json.url inventario_url(inventario, format: :json)
