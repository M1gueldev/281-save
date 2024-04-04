json.extract! persona, :id, :name, :identification, :phone, :email, :address, :created_at, :updated_at
json.url persona_url(persona, format: :json)
