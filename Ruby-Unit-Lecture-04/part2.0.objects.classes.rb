class Dog
  SEX = ["Male", "Female"]

  attr_accessor :first_name, :last_name, :sex

  dog = dog.new
  name = dog.first_name
  dog.first_name = "fido"

  #attr accessor basically creates
  #def first_name
  #end

  #def first_name=(val)
  #end
  

  def name
    "#{@first_name} #{@last_name}"
  end

  def initialize
    @sex = SEX[rand(2)]
  end

  def change_sexes
    SEX = ["Green", "Yellow"]
  end

end

fido = Dog.new
fido.name

snoopy = Dog.new


SEX[0]
















