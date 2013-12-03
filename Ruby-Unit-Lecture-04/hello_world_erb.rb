require 'erb'
str = "Hello <%= 'World'%>"
result = ERB.new(str).result
puts result


w = "World"
str = "Hello <%= w %>"
result = ERB.new(str).result
puts result

puts result*3


num_string = "123"
erb_string = "Counting <%= num_string %>"
result = ERB.new(erb_string).result
puts result


3.times do |num|
	num_string = num.to_s
	erb_string = "Counting <%= num_string %>"
	result = ERB.new(erb_string).result
	puts result
end