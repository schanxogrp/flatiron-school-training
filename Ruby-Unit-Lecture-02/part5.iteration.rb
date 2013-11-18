# Iteration means looping over elements within a collection.
# Objects that can do this are describe as Enumerable.

# Looping through each character of a string
# 'each_char' is a method that will loop through each character in a string.
"abcde".each_char do
  puts "Is this character a vowel?"
end

# This loop begins with the 'do' keyword. It means the code that follows
# should be run for every character within the string.

# The code that follows is refered to as the 'block' for the loop.
# The code block is the logic or routine that is triggered each iteration.
vowels = /a|e|i|o|u|y/
"abcde".each_char do |char|
  puts char + " is a vowel." if char.match(vowels)
end

# '|character|' is refered to as the yield or iterator of the loop.
# it is the variable or name that is given to each character in the string.
# each character is yielded to the block as a variable named 'character'

# Within the block, the 'match' method is called on 'character'.

# The Array class is also an enumerable.
# Using the 'each' method
[1,2,3,4,5].each_with_index do |int|
  puts "#{int} is odd" if int.odd?
end

# Assignment
# Iterate through all the letters in your name outputing all vowels.
name_array = []
i = 0
"sze".each_char do |char|
	if char.match(vowels)
		puts char 
	end
	#name_array[i] = char
	#i+=1
end
#puts name_array.inspect