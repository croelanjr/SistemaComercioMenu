class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :codigo_dni
      t.string :nombre
      t.string :apellido
      t.date :fecha_naci
      t.string :direccion
      t.string :distrito
      t.string :email
      t.string :clave
      t.string :delivery
      t.string :telefono

      t.timestamps null: false
    end
  end
end
