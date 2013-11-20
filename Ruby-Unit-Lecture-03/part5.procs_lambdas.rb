nums = [1,2,3,4]

#block
nums.each do |num|
	puts num
end
# a block is not an object.
# a proc (and a lambda) is
p = Proc.new {puts "hi"}
p.call

proc = Proc.new { |num| puts num }
# pass in a proc with an &
nums.each &proc
# you can call a proc this way and give it its block variable
proc[5]
proc.call(5)

# lambda
lam = lambda { |num| puts num }
nums.each &lam
# a lambda is a proc but a special kind
lam.inspect
# lambda new syntax as of 1.9
lam = -> { puts "hi" }
lam.call
lam = -> (num) {puts num}
lam.call(5)

#lambdas do argument checking
lam.call(5)
lam.call #argument errror
proc = Proc.new { |num| puts num }
proc.call(5)
proc.call #honeybadger don't care about old memes or args
proc.call(5,4,3)

# symbol-to-proc
nature = %w[tree cow dog farm]
puts nature.map {|item| item.length}
puts nature.map &:length

# special ones for hashes
fuels = {gas: 102399232, oil: 23923, coal: 99238239}
fuels.sort_by{|k,v| v}
fuels.sort_by &:last
fuels.sort_by &:first

