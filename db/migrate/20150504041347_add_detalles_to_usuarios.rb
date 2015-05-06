class AddDetallesToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :local, :string
    add_column :usuarios, :tipo, :string
  end
end
