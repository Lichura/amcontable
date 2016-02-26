json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :nombre, :mail, :telefono, :consulta
  json.url mensaje_url(mensaje, format: :json)
end
