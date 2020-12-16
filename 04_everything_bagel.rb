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
    is_everything_bagel ? "An everything bagel, great choice!" : "Not sure what to call this..."
  end

  def the_great_bagel_revision
    #if the bagel chef is unable to determine the bagel type, remake the bagel into it's glorious everything form and retun
    is_everything_bagel = self.bagel_type == "An everything bagel, great choice!"
    is_everything_bagel ? self : self.ideal_bagel

    #Else return the current bagel
  end

  def ideal_bagel
    #Transforms bagel into ideal self
    self.salt = true
    self.garlic = true
    self.poppy_seed = true
    self.blueberries = false
    self
  end

end

bagel_one = Bagel.new(salt: true, garlic: true, poppy_seed: true, blueberries: false)
bagel_two = Bagel.new(salt: true, garlic: true, poppy_seed: true, blueberries: true)

binding.pry
0
