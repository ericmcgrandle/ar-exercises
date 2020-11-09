require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

@store1 = Store.find_by(id: 1)
@store1.update(name: "Delta") 

@store2 = Store.find_by(id: 2)

@store3 = Store.find_by(id: 3)
@store3.destroy





