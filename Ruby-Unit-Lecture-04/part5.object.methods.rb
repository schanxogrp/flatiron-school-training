# All objects are a combination of logic (methods) and data (variables).
# The methods within a class are the methods available to the object.

# Ignore the following
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

# But if you're curious, I've taught all Objects, because all Objects
# inherit from the root class of Object, how to differentiate methods
# which are local to that class vs methods that belong to all Objects.

# We can ask objects which methods are available to them.

class Dog
  attr_accessor :owner, :name

  def ==(other_dog)
    if self.owner == other_dog.owner
      if other_dog.name == self.name
        return true
      end
    end
  end
end

class Person
  attr_accessor :name

  def ==(other_person)
    other_person.name == self.owner.name
  end
end

charlie = Person.new
charlie.name = "Charlie Brown"

snoopy = Dog.new
snoopy.name = "Snoopy"
snoopy.owner = charlie

snoopy2 = Dog.new
snoopy2.name = "Snoopy"
snoopy2.owner = charlie

puts snoopy.object_id == snoopy2.object_id
puts snoopy == snoopy2