class CreatePromoCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :promo_codes do |t|
      t.string :code
      t.decimal :value

      t.timestamps
    end
  end
end
