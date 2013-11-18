# Within blocks, there's a concept known as variable scope.
# Scope is the context (or location) that the variable is defined.
# Only variables that are within scope are accessible or usable.

# Blocks as Scope Gates
[1,2,3,4,5].each do # Open Scope Gate
  scoped = "Within the Loop" # Block Scope
end # Close Scope Gate
# Back to Current Scope

# the defined? method can check if a variable is defined.
puts defined?(scoped)

# Methods as Scope Gates
def within_method # Enter Method Scope
  invisible_outside = "now you see me"
end # Exit Method Scope

puts defined?(invisible_outside)

hello_string = "Hello, world!\n"

def say_hello(the_thing_to_say)
  puts defined?(the_thing_to_say)
end

say_hello(hello_string)

x = 10
y = 5

def square(x)
  puts "within the method x is " + x.to_s
  puts x*x
end

puts "x is " + x.to_s
square(5)
puts "x is " + x.to_s

# Tricky example showing shared scopes of blocks
i = "is a word"
puts i

# Block Scopes
[1,2,3,4,5].each do |i| # Enter Block Scope
  puts "i is #{i}"
end # Exit my Block Scope

puts i









