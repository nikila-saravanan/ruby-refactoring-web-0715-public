class Dog
  attr_accessor :leash, :plastic_bag, :walking, :vet

  def initialize(name, breed, owner_name)
    @name = name
    @breed = breed
    @owner = Owner.new(owner_name)
    @leash = false
    @plastic_bag = false
    @walking = false
    @vet_checkup = false
    owner.dog = self
  end

  def name
    @name
  end

  def bark
    "Woof!"
  end

  def breed
    @breed
  end

  def owner
    @owner
  end

  def walking?(owner)
    owner.walk
    @walking = true
  end

  def vet_checkup?(owner)
    owner.vet_checkup
    @vet_checkup = true
  end

  # Refactor the following methods as methods in the Owner class!

  # def walk(owner)
  #   # REFACTOR!
  #   owner.dog.leash = true
  #   owner.dog.plastic_bag = true
  #   owner.dog.walking = true
  # end

  # def vet_checkup(owner)
  #   # REFACTOR!
  #   owner.dog.leash = true
  #   owner.dog.plastic_bag = true
  #   owner.dog.vet_checkup = true
  # end
end
