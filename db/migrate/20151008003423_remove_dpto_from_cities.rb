class RemoveDptoFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :dpto, :integer
  end
end
