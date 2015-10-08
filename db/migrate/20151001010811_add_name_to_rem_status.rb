class AddNameToRemStatus < ActiveRecord::Migration
  def change
    add_column :rem_statuses, :name, :string
  end
end
