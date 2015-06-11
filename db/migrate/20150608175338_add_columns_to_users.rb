class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :lastname, :string
    add_column :users, :fechadenacimiento, :string
    add_column :users, :dni, :string
    add_column :users, :direccion, :string
    add_column :users, :distrito, :string
    add_column :users, :telefono, :string
    add_column :users, :diredeli, :string
  end
end
