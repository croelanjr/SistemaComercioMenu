class CreateCorreos < ActiveRecord::Migration
  def change
    create_table :correos do |t|
      t.string :nombre
      t.string :email
      t.string :asunto
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
