require 'csv'

#desc "Imports dispensary data from a CSV"
#task lots: :environment do
    CSV.foreach("#{Rails.root}/db/data/results_hyde_park.csv", headers: true) do |row|
      unless Lot.find_by(pin: row[0], address: row[1], city: row[2]).present?
        Lot.create(
            pin: row[0],
            address: row[1],
            city: row[2],
            township: row[3],
            property_class: row[4],
            name: row[5],
            tax_address: row[6]
          )
      end
  end
  #end
  puts "There are #{Lot.count} lots in the database"
#whaaat
