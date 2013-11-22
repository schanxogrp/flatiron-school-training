# All objects are a combination of logic (methods) and data (variables).
# The methods within a class are the methods available to the object.

class Object
  def local_methods
    (self.methods - Object.instance_methods).sort
  end
end

# I've taught all Objects, because all Objects
# inherit from the root class of Object, how to differentiate methods
# which are local to that class vs methods that belong to all Objects.

# We can ask objects which methods are available to them.

class Person
  attr_accessor :name

  def ==(other_person)
    self.name == other_person.name
  end

  def +(other_person)
    Person.new
  end

end

person_1 = Person.new
person_1.name = "Avi"

person_2 = Person.new
person_2.name = "Avi"

person_1 == person_2
person_1 + person_2

