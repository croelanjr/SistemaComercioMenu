class CreateCarritos < ActiveRecord::Migration
  def change
    create_table :carritos do |t|
      t.string :menu
      t.string :menu1
      t.string :cantidad
      t.decimal :precio

      t.timestamps null: false
    end
  end
end
