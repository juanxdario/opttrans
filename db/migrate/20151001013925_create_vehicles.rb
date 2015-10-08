class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :plate
      t.boolean :available
      t.string :photo
      t.references :transporter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
