class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :dni
      t.string :email
      t.string :clave

      t.timestamps null: false
    end
    add_index :usuarios, :email, unique: true
  end
end
