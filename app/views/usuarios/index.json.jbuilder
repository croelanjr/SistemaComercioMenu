json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombres, :dni, :email, :clave
  json.url usuario_url(usuario, format: :json)
end
