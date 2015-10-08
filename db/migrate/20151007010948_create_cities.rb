class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :coddpto
      t.integer :codmun
      t.string :dpto
      t.string :mun

      t.timestamps null: false
    end
  end
end
