task default: :csvtodb

desc "Esta es una rutina de ejemplo"
require 'csv'
task :csvtodb => [:environment]  do
    #t=Time.now.to_s
    csv_text = File.read("lib/resources/municipios.csv") #cargar archivo con headers
    csv1 = CSV.parse(csv_text, {:col_sep => ",", :headers => true})
    csv1.each do |row|
      text=City.create!(row.to_hash)
      puts text.mun
    end
  end

