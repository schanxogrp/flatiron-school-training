# every method in ruby accepts a block
# whether or not that method does something with it...

puts "hi" do
	puts 1+1
end

3.times do
	puts 1+1
end

# some methods yield one or more variables to use in the block
{:a => "a", :b => "b"}.each { |k, v| puts k; puts v }

def method_that_uses_a_block
	yield "hi"
end

method_that_uses_a_block do |var|
	puts "#{var} there"
end

def my_times(counter)
	x = 0
	while x < counter
		yield
		x += 1
	end
end

my_times(5) do
	puts "hi"
end

def my_times_with_index(counter)
	x = 0
	while x < counter
		yield x
		x += 1
	end
end

my_times_with_index(5) {|i| puts i }