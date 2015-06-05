class CreatePedidos < ActiveRecord::Migration
  def drop
    drop_table :pedidos
  end

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
      t.integer :cantidad
      t.decimal :precio
      t.string :delivery
      t.string :observacion

      t.timestamps null: false
    end
  end
end
