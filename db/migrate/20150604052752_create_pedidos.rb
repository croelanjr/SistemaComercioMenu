class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :numero
      t.date :fecha
      t.string :nombre
      t.string :dni
      t.string :telefono
      t.string :email
      t.string :local
      t.string :menu
      t.string :menu1
      t.integer :cantidad
      t.float :precio
      t.string :delivery
      t.string :observacion
      t.references :usuario

      t.timestamps null: false
    end
  end
end
