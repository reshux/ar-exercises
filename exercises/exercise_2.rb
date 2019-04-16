require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
oldname = @store1.name
@store2 = Store.find_by(id: 2)
@store1.name = 'New Burnaby'
@store1.save

puts "Store name changed from #{oldname} to #{@store1.name}"