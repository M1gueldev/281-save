class CreateOrganizacionBeneficas < ActiveRecord::Migration[7.0]
  def change
    create_table :organizacion_beneficas do |t|
      t.string :nombre
      t.string :tipo
      t.decimal :latitud
      t.decimal :longitud
      t.string :email
      t.string :CI
      t.references :economica, null: false, foreign_key: true
      t.string :nro_de_cuenta

      t.timestamps
    end
  end
end
