class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :vehicle, foreign_key: true
      t.datetime :date
      t.datetime :pickup_date
      t.datetime :delivery_date
      t.decimal :value
      t.integer :status

      t.timestamps
    end
  end
end
