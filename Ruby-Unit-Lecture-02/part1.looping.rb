# puts "Another way to use expressions to control flow is through loops."

x = 1

while x < 10 # 1 < 10 => true
  puts x
  x += 2
  if x < 4
    puts "it is still less then 4"
  end
end

x = 1

while x < 21

  if x > 20
    puts "stopping cause we got to 20."
    7
  else
    "test"
  end
  x+=1
end

puts "The break keyword will exit the current loop."

# Some Fun Loops
# WARNING: Some of these loops are infinite loops.

hell = "really hot"
until hell == "frozen over"
  hell = "frozen over"
  puts "Don't use the until loop."
end


until x == 1
  puts "hello"
  x = 1
end

unless true

end

# while x != 1
#   puts "hello"
# end

# Assignment
# Write a while loop that runs exactly 5 times
x = 1
while x < 5
  puts x
  x+=1
end

5.times do |i|
  puts i
  i+=1

end
# Write a while loop that counts from 1 to 10 and puts all odd numbers
# => you can check if a number is odd by calling the odd? method on it.
# => 1.odd? will return true
1.odd?
2.even?

def method?
  puts "hi"
end
method?

def method!
  puts "hi"
end

str = "a,e,i,o,u"
str.split(',')
str.gsub(',', ' ')
str.gsub!(',', ' ')

#the ! is destructive
