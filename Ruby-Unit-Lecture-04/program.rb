class Program
	attr_accessor :name, :lines_of_code, :developer

	@@programs = []

	def self.reset_all
		@@programs.clear
	end
	
	def initialize
		@@programs.clear
	end

	def self.all
		@@programs << self
	end

	def executable?
		true
	end

end
