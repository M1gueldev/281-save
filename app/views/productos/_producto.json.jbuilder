json.extract! producto, :id, :name, :description, :quantity, :created_at, :updated_at
json.url producto_url(producto, format: :json)
