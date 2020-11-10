require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# puts "Enter a store name"
# store_name = gets.chomp

delta = Store.create(name: "Delta")
# store = Store.create(name: "#{store_name}", annual_revenue: 300000, mens_apparel: false, womens_apparel: false)

delta.errors.messages.each {
  |e|
  puts e
}