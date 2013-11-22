class Dog
	def initialize
		@name = "fido"
	end

	def name(value)
		@name = value
	end

	def name=(value)
		@name = value
	end
end

class Dog
	def initialize
		@name = "fido"
	end

end


class Dog
	attr_accessor :name
	def initialize
		@name = "fido"
	end

end


class Dog
	attr_accessor :name
	def  initialize
	end

	def self.build_with_name(name)
		Dog.new.tap { |dog| dog.name = "fido" }
	end
end


class Cat
	attr_accessor :name, :is_stupid

	def initialize(name)
		@name = name
		@is_stupid = true
	end
end

felix = Cat.new("felix")
heathcliff = Cat.new("heathcliff").tap { |cat| cat.is_stupid = false }