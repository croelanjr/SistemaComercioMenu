json.array!(@menus) do |menu|
  json.extract! menu, :id, :codigo, :nombre_menu, :tipo_menu
  json.url menu_url(menu, format: :json)
end
