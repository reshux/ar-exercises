require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Sum of annual revenue: #{Store.sum('annual_revenue')}"
puts "Average annual revenue: #{Store.average('annual_revenue')}"
puts "Number of stores that make more than a million a year: #{Store.where("annual_revenue > ?",1000000).count}"
