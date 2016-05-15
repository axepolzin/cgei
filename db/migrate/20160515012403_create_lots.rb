class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :pin
      t.string :address
      t.string :city
      t.string :township
      t.text :property_class
      t.string :name
      t.string :tax_address

      t.timestamps null: false
    end
  end
end
