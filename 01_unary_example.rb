require 'pry'

class Dog
  attr_accessor :name

  def initialize(dog_hash)
    @name = dog_hash[:name]
  end

  def adopt
    #Returns adoption message with dog name.
    #If dog does not have a name, sets default to spot.
  end

end

dog_one = Dog.new({})
dog_two = Dog.new(name: "Lassie")

binding.pry
0
