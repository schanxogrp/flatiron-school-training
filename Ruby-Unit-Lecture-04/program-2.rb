class Program
  @@programs = []
  attr_accessor :name, :lines_of_code, :developer
  
  def self.reset_all
    @@programs.clear
  end  

  def initialize
    @@programs << self
  end
  
  def self.all
    @@programs
  end

  def executable?
    true
  end
end