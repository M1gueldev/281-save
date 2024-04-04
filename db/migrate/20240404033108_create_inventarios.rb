class CreateInventarios < ActiveRecord::Migration[7.0]
  def change
    create_table :inventarios do |t|
      t.string :elementos
      t.integer :cantidad
      t.string :ubicacion
      t.date :fecha

      t.timestamps
    end
  end
end
