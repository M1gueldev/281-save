json.extract! organizacion_benefica, :id, :nombre, :tipo, :latitud, :longitud, :email, :CI, :economica_id, :nro_de_cuenta, :created_at, :updated_at
json.url organizacion_benefica_url(organizacion_benefica, format: :json)
