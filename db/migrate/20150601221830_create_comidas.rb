class CreateComidas < ActiveRecord::Migration
  def change
    create_table :comidas do |t|
      t.string :dia
      t.string :fecha
      t.string :codigo
      t.string :menu
      t.string :tipo
      t.string :ciudad
      t.string :local
      t.integer :cantidad
      t.decimal :precio

      t.timestamps null: false
    end
  end
end
