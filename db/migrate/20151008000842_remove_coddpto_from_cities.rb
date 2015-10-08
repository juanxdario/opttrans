class RemoveCoddptoFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :coddpto, :integer
  end
end
