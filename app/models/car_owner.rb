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
  def self.all_car_amount
    Car.all.length / CarOwner.all.length.to_f
  end

  # Get a list of all the cars that a specific owner has
  def get_my_cars
    Car.all.select{|car| car.car_owner == self}
  end

  # Get a list of all the mechanics that a specific owner goes to
  def get_my_mechanics
    get_my_cars.map{|car| car.mechanic}
  end

end
