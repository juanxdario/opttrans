class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :email
      t.integer :phone
      t.string :contact

      t.timestamps null: false
    end
  end
end
