# Ruby is an Object-Oriented Language. That means everything is an object.

# So far we've explicitly encountered the following kinds of objects:
# Integer, String, Array, Hash, and Symbol.

# Each of these are a kind of object defined by their Ruby Class.

# A class is like a blueprint, or a model for an object.
# An object's class specifies what the object can do.

# A class in ruby is represented by the 'class' keyword
# and the capitalized version of it's name.
class String
end

# From here on in, the constant String represents the String class
# in the same way that the variable x represents the number 1.

# The name of a class is a lot like a variable pointing at a value.

# Once a class is defined, instances of that class can be created.
class Dog
end

fido = Dog.new

# 'fido' is now a local variable representing a specific, individual Dog.
# Whereas 'Dog' is the Dog class, representing all dogs, in general.

rover = Dog.new
# 'rover' is now a new, different Dog than fido. They are not equal to eachother

puts rover == fido
# Each dog has a unique object_id.
puts rover.object_id
puts fido.object_id

# This is the heart of object-orientation, creating new kinds of things
# for a program to use.
