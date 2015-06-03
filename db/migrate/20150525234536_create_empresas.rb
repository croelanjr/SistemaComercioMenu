class CreateEmpresas < ActiveRecord::Migration
  def migrate(direction)
    super
    Empresa.create!(name: 'empresa', created_at:'2015-05-21 15:19:11') if direction == :up
  end

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
