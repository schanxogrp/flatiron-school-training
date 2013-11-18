puts "Ruby is an object-oriented language."
puts "As the programmer, we interact with objects by sending them methods."

# shout = "i don't mean to be yelling"
def shout
  "i don't mean to be yelling"
end

"I DON'T MEAN TO BE YELLING".downcase #=> downcased
shout.downcase.upcase #=.



puts "We sent the shout String the upcase method using dot notation."
puts "In 'shout.upcase' the variable 'shout' is the receiving object."
puts "The word 'upcase' is the method sent to the receiver."

puts shout.reverse
puts "'shout.reverse' sends the 'reverse' method to the shout variable."

puts shout.downcase.reverse.capitalize.reverse.capitalize

puts "Since all methods return an object or value, you can chain methods,"
puts "which sends the next method to the object that was returned."

# Look at Return Values in Console

puts (10.to_s.to_i * 30).to_s + " is Sparta!"

puts "The to_s method converts an object to a string."
puts "The to_i method converts an object to an integer."

puts "All objects can receive methods. The methods they can receive are defined in an API."

# String API
# http://ruby-doc.org/core-1.9.3/String.html

puts "Best of all, all objects support the 'methods' method, which returns it's methods."

puts "I can do the following".methods

# Assignment
#
# Create a variable that stores your name as a string.
#   Send that variable (string object) the upcase method.
#   Try to slice the middle letter of your name out of the string.
#   http://ruby-doc.org/core-1.9.3/String.html#method-i-slice

# Chain at least 5 method calls to an object.
# Reduce this operation one chain at a time.
# Example:

# Full Chain:
puts "start".reverse.slice(0,2).concat("uth").capitalize
            # trats
                    #tr
                                #truth
                                              #Truth

# At any given point in the chain, there is an evaluation
# that then receives the next method call
