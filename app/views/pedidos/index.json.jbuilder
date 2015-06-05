json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :numero, :fecha, :nombre, :dni, :telefono, :email, :local, :menu, :cantidad, :precio, :delivery_id, :observacion
  json.url pedido_url(pedido, format: :json)
end
