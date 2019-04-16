require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

Store.all.each do |store|

    store.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
    store.employees.create(first_name: "Duruhan", last_name: "Unsal", hourly_rate: 80)

end

