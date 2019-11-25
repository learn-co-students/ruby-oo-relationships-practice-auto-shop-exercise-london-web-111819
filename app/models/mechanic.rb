class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.filter {|car| car.mechanic == self}
end


def car_owners
  cars.map {|car| car.car_owner }
end     

def car_owners_names
  car_owners.collect {|car_owner| car_owner.name}
end



end
