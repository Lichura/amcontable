json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :descripcion
  json.url servicio_url(servicio, format: :json)
end
