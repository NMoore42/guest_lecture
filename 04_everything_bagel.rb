require 'pry'

class Bagel
  attr_accessor :salt, :garlic, :poppy_seed, :blueberries

  def initialize(bagel_hash)
    @salt = bagel_hash[:salt]
    @garlic = bagel_hash[:garlic]
    @poppy_seed = bagel_hash[:poppy_seed]
    @blueberries = bagel_hash[:blueberries]
  end

  def bagel_type
    is_everything_bagel = self.salt && self.garlic && self.poppy_seed && !self.blueberries
    is_everything_bagel ? "An everything bagel! Good Choice!" : "Not sure what you call this, but it's not an everything bagel"
  end

end

bagel_one = Bagel.new(salt: true, garlic: true, poppy_seed: true, blueberries: false)

binding.pry
0
