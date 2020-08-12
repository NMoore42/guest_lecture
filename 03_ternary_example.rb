require 'pry'

class PizzaOrder
  attr_reader :vegetarian

  def initialize(order_hash)
    @vegetarian = order_hash[:vegetarian]
  end

  def order_up
    self.vegetarian ? "No animals were harmed in the making of your pizza" : "Here's your meat-lover's ya filthy animal!"
  end

end

order_one = PizzaOrder.new(vegetarian: true)

binding.pry
0
