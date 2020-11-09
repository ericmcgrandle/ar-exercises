require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

num_of_stores = Store.count
total_annual_revenue = Store.sum("annual_revenue")

puts total_annual_revenue
puts total_annual_revenue / num_of_stores


puts Store.where("annual_revenue > 1000000").count