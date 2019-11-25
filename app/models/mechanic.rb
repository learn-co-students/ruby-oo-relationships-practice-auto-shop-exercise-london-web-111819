class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all.push(self)
  end

  # Get a list of all mechanics
  def self.all
    @@all
  end

  # Get a list of all cars that a mechanic services
  def all_my_cars
    Car.all.select{|car| car.mechanic == self}
  end

  # Get a list of all the car owners that go to a specific mechanic
  def all_my_car_owners
    all_my_cars.map{|car| car.car_owner}
  end

  # Get a list of the names of all car owners who go to a specific mechanic
  def get_all_my_owner_names
    all_my_car_owners.map{|owner| owner.name}
  end
end
