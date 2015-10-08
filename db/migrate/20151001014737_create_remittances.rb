class CreateRemittances < ActiveRecord::Migration
  def change
    create_table :remittances do |t|
      t.integer :weight
      t.integer :large
      t.integer :width
      t.integer :height
      t.boolean :delicate
      t.boolean :urgent
      t.string :max_date
      t.references :customer, index: true, foreign_key: true
      t.references :rem_status, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.references :del_address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
