require "pry"

class Car

  attr_reader :make, :model, 
  attr_accessor :car_owner, :mechanic
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

  def classification
    @classification
  end

  def self.list_of_classifications
    self.all.collect {|car| car.classification}
  end

  def mechanics
    Mechanic.all.filter {|mechanic| mechanic.specialty == self.classification}
  end


end
