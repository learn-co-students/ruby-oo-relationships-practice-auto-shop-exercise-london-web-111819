class Car

  attr_reader :make, :model, :car_owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @car_owner = car_owner
    @mechanic = mechanic
    @classification = classification
    @@all.push(self)
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.get_all_classifications
    Car.all.map{|car| car.classification}
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def get_mechanics_by_expertise
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end
end
