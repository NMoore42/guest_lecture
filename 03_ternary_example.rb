require 'pry'

class PizzaOrder
  attr_reader :vegetarian

  def initialize(order_hash)
    @vegetarian = order_hash[:vegetarian]
  end

  def order_up
    self.vegetarian
    ?
    "No animals were harmed in the making of your pizza"
    :
    "Here's your meat lover you filthy animal!"
  end

end

order_one = PizzaOrder.new(vegetarian: true)
order_two = PizzaOrder.new(vegetarian: false)

binding.pry
0
