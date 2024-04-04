class CreateSolicituds < ActiveRecord::Migration[7.0]
  def change
    create_table :solicituds do |t|
      t.references :voluntario, null: false, foreign_key: true
      t.references :organizacion_benefica, null: false, foreign_key: true
      t.references :inventario, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
