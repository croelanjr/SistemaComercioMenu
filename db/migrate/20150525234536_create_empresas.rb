class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :name
      t.string :ruc
      t.string :direccion
      t.string :telefono
      t.string :moneda
      t.string :igv
      t.text :about_1
      t.text :about_2

      t.timestamps null: false
    end
  end
end
