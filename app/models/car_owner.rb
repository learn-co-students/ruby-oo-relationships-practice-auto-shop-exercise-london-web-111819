class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  # Get a list of all owners
  def self.all
    @@all
  end

  # Get the average amount of cars owned for all owners
  def self.average_amount_cars
    Car.all.length.to_f / Mechanic.all.length
  end

  # Get a list of all the cars that a specific owner has
  def cars
    Car.all.select{|car| car.car_owner == self}
  end

  # Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map{|car| car.mechanic}
  end
end
