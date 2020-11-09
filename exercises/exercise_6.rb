require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jesse", last_name: "Atwood", hourly_rate: 60)
@store1.employees.create(first_name: "Brynn", last_name: "Dock", hourly_rate: 60)
@store1.employees.create(first_name: "Gary", last_name: "Stigu", hourly_rate: 60)
@store2.employees.create(first_name: "Jason", last_name: "Bik", hourly_rate: 60)
@store2.employees.create(first_name: "Jay", last_name: "Lilo", hourly_rate: 60)
@store2.employees.create(first_name: "Mia", last_name: "Franco", hourly_rate: 60)