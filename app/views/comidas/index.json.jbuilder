json.array!(@comidas) do |comida|
  json.extract! comida, :id, :dia, :fecha, :codigo, :menu, :tipo, :ciudad_id, :local_id, :cantidad, :precio
  json.url comida_url(comida, format: :json)
end
