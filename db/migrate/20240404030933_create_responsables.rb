class CreateResponsables < ActiveRecord::Migration[7.0]
  def change
    create_table :responsables do |t|
      t.string :name
      t.string :identification
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
