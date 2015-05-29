class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :ciudad
      t.string :direccion
      t.string :telefono

      t.timestamps null: false
    end
  end
end
