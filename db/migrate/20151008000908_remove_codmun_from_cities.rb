class RemoveCodmunFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :codmun, :integer
  end
end
