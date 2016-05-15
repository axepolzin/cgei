require 'csv'

namespace :import do
  desc "Import users from CSV"
  task lots: :environment do

#counter = 0
    CSV.foreach("#{Rails.root}/db/data/test_hyde_park.csv", headers: true) do |row|
      #pin, address, city, township, property_class, name, tax_address = row

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
        #counter += 1 if user.persisted?
  end

end
puts "There are #{Lot.count} dispensaries in the database"

end
end
