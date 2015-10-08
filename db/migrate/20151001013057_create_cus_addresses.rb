class CreateCusAddresses < ActiveRecord::Migration
  def change
    create_table :cus_addresses do |t|
      t.string :address
      t.string :city
      t.integer :phone
      t.boolean :favorite
      t.boolean :collect_address
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
