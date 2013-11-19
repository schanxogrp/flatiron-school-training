p "hi"

# in ruby we can override any previous thing by redefining
def p(anything)
  "nope"
end

p "hi"

# similarly, all ruby classes are open for modification.
puts "hi".length
class String
  def length
    "haha"
  end
end
puts "hi".length

# we can add useful things to a class
class Array
  def my_each
    self.each do |item|
      yield item, "you're great"
    end
  end
end
# my_each becomes available on the instance of the class
["scott","jon","tom","paul"].my_each {|i, msg| puts "#{i}, #{msg}"}
