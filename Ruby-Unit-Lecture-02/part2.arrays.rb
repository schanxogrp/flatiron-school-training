puts "So far we're familiar with a few of the common ruby types."

puts "This is a string."

if 1.is_a?(Integer)
  puts "1 is an Integer"
end

puts "Another common type is an Array."
puts "An array is an indexed collection of objects."
puts "It has a bunch of slots and you can put data in them."

easy_as = ["a", "b", "c"]
easy_as[0]

puts easy_as

y = ["a","b","z"][1]

days_of_the_week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

puts "We access the data in an array by referring to the index or position of the slot."

puts "The first day of the week is: " + days_of_the_week[0]

puts "The last day of the week is: " + days_of_the_week[-1]

puts "We can use the 'first' method to refer to the first position in an array."

puts "Or more commonly, we use the position index, starting with 0 to access values."

puts "The first day of the week is: " + days_of_the_week[0]

puts "The last is: " + days_of_the_week[6]

puts "The last is: " + days_of_the_week[-2]

first_day = days_of_the_week.first
last_day = days_of_the_week.last

easy_as = [1,2,3]

easy_as[-2] == easy_as[1]

puts "A negative index position starts backwards."
puts "-1 means the first position after the last."
puts "-4 means the fourth position after the last."

puts days_of_the_week[-3]

puts "Finally, arrays are well aware of their size."

puts days_of_the_week.size

puts days_of_the_week[(days_of_the_week.size-1)]

puts "You can also grab a range of multiple values at once."

weekdays = days_of_the_week[1, 5]

puts weekdays

days_of_the_week.count
days_of_the_week.size
days_of_the_week.length


puts "Finally, you can also set the value of slots in the array using [index]="

empty = []

empty[0] = "filled!"

empty[5] = "also filled"

puts empty.inspect

# Assignment
# Construct an array with your favorite foods. It should have at least
# 5 elements.
#   puts your most favorite food out of that array
foods = ['pizza','ramen','sushi','burgers','french fries']
puts foods.inspect
puts foods[1]

# Construct an array with the colors of the rainbow (ROYGBIV)
#   Slice the colors Red, Orange, and Yellow out of the array
rainbow = ['red','orange','yellow','green','blue','indigo','violet']
puts rainbow.inspect
roy = rainbow.slice(0,3)
puts roy

# Start with an empty array and then fill the second and 6th position
empty = []
empty[1] = "2nd element"
empty[5] = "6th element"
puts empty.inspect

empty[0].nil?
puts "nil" if empty[0] == nil

