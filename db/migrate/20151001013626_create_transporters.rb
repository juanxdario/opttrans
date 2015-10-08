class CreateTransporters < ActiveRecord::Migration
  def change
    create_table :transporters do |t|
      t.integer :count_remittances
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
