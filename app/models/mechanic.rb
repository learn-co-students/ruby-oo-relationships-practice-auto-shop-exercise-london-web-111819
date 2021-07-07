class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name:,specialty:)
    @name = name
    @specialty = specialty
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_served
    #Get a list of all cars that a mechanic services
    Car.all.select{|car|car.mechanic == self}
  end

  def car_owners_served
    #Get a list of all the car owners that go to a specific mechanic
    cars_served.map{|car|car.owner}.uniq
  end

  def names_car_owners_served
    #Get a list of the names of all car owners who go to a specific mechanic
    car_owners_served.map{|car_owner|car_owner.name}
  end

end
