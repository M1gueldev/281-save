class CreateAlimentos < ActiveRecord::Migration[7.0]
  def change
    create_table :alimentos do |t|
      t.string :name
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
