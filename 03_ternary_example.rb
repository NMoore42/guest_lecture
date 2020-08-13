require 'pry'

class PizzaOrder
  attr_reader :vegetarian

  def initialize(order_hash)
    @vegetarian = order_hash[:vegetarian]
  end

  def order_up
    #Returns appropriate response based on if pizza is vegetarian
  end

end

order_one = PizzaOrder.new(vegetarian: true)
order_two = PizzaOrder.new(vegetarian: false)

binding.pry
0
