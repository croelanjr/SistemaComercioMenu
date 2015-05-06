class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :codigo
      t.string :nombre_menu
      t.string :tipo_menu

      t.timestamps null: false
    end
  end
end
