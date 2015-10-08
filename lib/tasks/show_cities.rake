namespace :show do
  desc "Show cities in COLOMBIA"
  task :cities => :environment do
    Cities.data_path = "lib/tasks/cities"
    puts Cities.data_path
    cities = Cities.cities_in_country('CO')
    mcr= cities['bogota']
    puts mcr.name
   end
end