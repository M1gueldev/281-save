class CreateEconomicas < ActiveRecord::Migration[7.0]
  def change
    create_table :economicas do |t|
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end
