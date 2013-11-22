class Developer
  attr_accessor :name, :languages, :good, :programs

  def lazy?
    !!self.good
  end
end