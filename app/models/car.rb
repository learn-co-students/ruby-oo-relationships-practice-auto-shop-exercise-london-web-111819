class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.class
    Car.all.map{|car|car.classification}
  end

  def possible_mec
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification }
  end
    

end


 # def cars
  #   Car.all.select{|car| car.car_owner == self}
  # end

  # def mechanics
  #   Mechanic.all.select{ |mechanic| mechanic.car == self}
  # end

  # def owner_who_has_this_mechanic
  #   mechanics.map { |mechanic| mechanic.car_owner}
  # end
