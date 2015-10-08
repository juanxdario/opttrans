class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :count_services
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
