require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'


puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Enter a name for your new store:"
name = gets.chomp
puts @new_store = Store.create(name: name)

if @new_store.errors.any?
  @new_store.errors.each do |error, message|
    puts "Error! #{error} #{message}"
  end
end