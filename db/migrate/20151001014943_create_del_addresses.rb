class CreateDelAddresses < ActiveRecord::Migration
  def change
    create_table :del_addresses do |t|
      t.string :contact
      t.string :address
      t.string :city
      t.integer :phone
      t.references :transporter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
