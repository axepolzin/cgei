require 'csv'

namespace :import do
  desc "Import users from CSV"
  task lots: :environment do


    CSV.foreach("#{Rails.root}/db/data/results_hyde_park.csv", headers: true) do |row|
      unless Lot.find_by(pin: row[0]).present?
      Lot.create(
          pin: row[0],
          address: row[1],
          if address:.split[0].integer? then
            number = address:.split[0]
            
          end
          city: row[2],
          township: row[3],
          property_class: row[4],
          name: row[5],
          tax_address: row[6]
        )
      end

    end
puts "There are #{Lot.count} lots in the database."

end
end
