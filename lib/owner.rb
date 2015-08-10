class Owner
  # code your solution here!
  attr_accessor(:name,:dog)

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def dog
    @dog
  end

  def prepare_items
    self.dog.leash = true
    self.dog.plastic_bag = true
  end

  def walk
    self.prepare_items
  end

  def walking?
    true
  end

  def vet_checkup
    self.prepare_items
  end


end
