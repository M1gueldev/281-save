json.extract! alimento, :id, :name, :description, :quantity, :created_at, :updated_at
json.url alimento_url(alimento, format: :json)
