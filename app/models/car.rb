class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all.push(self)
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.all_classifications
    Car.all.map{|car| car.classification}
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def match_mechanic
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end
