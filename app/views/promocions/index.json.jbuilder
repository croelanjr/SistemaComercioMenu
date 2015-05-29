json.array!(@promocions) do |promocion|
  json.extract! promocion, :id, :nombre, :descripcion, :picture
  json.url promocion_url(promocion, format: :json)
end
