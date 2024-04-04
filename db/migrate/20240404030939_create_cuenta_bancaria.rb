class CreateCuentaBancaria < ActiveRecord::Migration[7.0]
  def change
    create_table :cuenta_bancaria do |t|
      t.string :number
      t.string :bank
      t.string :user

      t.timestamps
    end
  end
end
