json.array!(@locals) do |local|
  json.extract! local, :id, :nombre, :ciudad, :direccion, :telefono
  json.url local_url(local, format: :json)
end
