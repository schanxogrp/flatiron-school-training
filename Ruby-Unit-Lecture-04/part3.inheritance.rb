# classes can inherit from one another
class Animal
  attr_accessor :legs


end

class Human < Animal


end

avi = Human.new
avi.legs

# animal = Animal.new
# puts animal.legs

# human = Human.new
# puts human.legs

# # Inheritence isn't the greatest pattern ever, we prefer the builder pattern
# # of modules.

# module BodyParts
# end

# module Movement
#   module Animal
#     def go
#     end
#   end

#   module Human
#     def walk
#     end
#   end
# end

# class Animal
#   include Movement::Animal
# end

# class Human
#   include Movement::Animal
#   include Movement::Human
# end
