require 'pry'

class Dog
  attr_accessor :name

  def initialize(dog_hash)
    @name = dog_hash[:name]
  end

  def adopt
    if !self.name
      self.name = "Spot"
    end
    "Your new dog's name is #{self.name}"
  end

end

dog_one = Dog.new({name: "Fido"})

binding.pry
0
