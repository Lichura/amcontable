json.array!(@servicios_lists) do |servicios_list|
  json.extract! servicios_list, :id, :servicio, :descripcion, :servicio_id
  json.url servicios_list_url(servicios_list, format: :json)
end
