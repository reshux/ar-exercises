require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'



puts "Exercise 8"
puts "----------"

# Your code goes here ...
@store_example=Store.find_by(id: 5)
@employee_test = @store_example.employees.create(first_name: "Testing", last_name: "Exercise", hourly_rate: 200)

puts @employee_test.password
