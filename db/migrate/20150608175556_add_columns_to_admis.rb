class AddColumnsToAdmis < ActiveRecord::Migration
  def change
    add_column :admis, :username, :string
    add_column :admis, :lastname, :string
    add_column :admis, :fechadenacimiento, :string
    add_column :admis, :dni, :string
    add_column :admis, :direccion, :string
    add_column :admis, :distrito, :string
    add_column :admis, :telefono, :string
  end
end
