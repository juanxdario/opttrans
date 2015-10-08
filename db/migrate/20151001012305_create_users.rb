class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :phone
      t.references :transporter, index: true, foreign_key: true
      t.references :user_status, index: true, foreign_key: true
      t.references :user_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
