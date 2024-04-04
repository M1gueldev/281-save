class CreateDonacions < ActiveRecord::Migration[7.0]
  def change
    create_table :donacions do |t|
      t.references :producto, null: false, foreign_key: true
      t.references :alimento, null: false, foreign_key: true
      t.references :solicitud, null: false, foreign_key: true

      t.timestamps
    end
  end
end
