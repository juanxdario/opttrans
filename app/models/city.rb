class City < ActiveRecord::Base
  belongs_to :state
  def  mun_city
    #{}"#{dpto}  /  #{mun}"
  end

  def group_cities
    #@grouped_options={}
    #cities=City.all
    #cities.each do |row|
      #@grouped_options[row.dpto].push(row.mun)
    #end
  end

end
