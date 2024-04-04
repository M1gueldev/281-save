class CreateEstablecimientos < ActiveRecord::Migration[7.0]
  def change
    create_table :establecimientos do |t|
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
