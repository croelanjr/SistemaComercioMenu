json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :name, :ruc, :direccion, :telefono, :moneda, :igv, :about_1, :about_2
  json.url empresa_url(empresa, format: :json)
end
