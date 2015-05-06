json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :codigo_dni, :nombre, :apellido, :fecha_naci, :direccion, :distrito, :clave, :delivery, :telefono
  json.url cliente_url(cliente, format: :json)
end
