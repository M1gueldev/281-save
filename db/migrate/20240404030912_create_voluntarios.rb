class CreateVoluntarios < ActiveRecord::Migration[7.0]
  def change
    create_table :voluntarios do |t|
      t.references :persona, null: false, foreign_key: true

      t.timestamps
    end
  end
end
