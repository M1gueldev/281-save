class CreateAlmacens < ActiveRecord::Migration[7.0]
  def change
    create_table :almacens do |t|
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
