class Pig < ActiveRecord::Base
	def oink
		"#{self.name} says oink"
	end

end
