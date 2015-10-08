class CreateRemStatuses < ActiveRecord::Migration
  def change
    create_table :rem_statuses do |t|
      t.references :remittance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
