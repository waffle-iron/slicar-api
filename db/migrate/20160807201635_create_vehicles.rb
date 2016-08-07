class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :title
      t.integer :model
      t.string :color
      t.string :short_description
      t.text :long_description
      t.decimal :price_per_hour
      t.decimal :price_per_day
      t.integer :transmission
      t.integer :doors
      t.integer :passengers
      t.boolean :air_conditioner
      t.boolean :luggage
      t.boolean :dvd
      t.boolean :gps
      t.boolean :radio
      t.boolean :usb
      t.integer :fuelt_type
      t.decimal :latitude
      t.decimal :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
