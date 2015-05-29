class CreatePromocions < ActiveRecord::Migration
  def change
    create_table :promocions do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen

      t.timestamps null: false
    end
  end
end
