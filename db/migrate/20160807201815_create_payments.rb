class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :reservation, foreign_key: true
      t.datetime :date
      t.string :transaction_id
      t.integer :status

      t.timestamps
    end
  end
end
