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

def all_cars_per_mechanic #get a list of cars with same mechanic
  Car.all.select {|car| car.mechanic == self}
end

def car_owners_list #list of car owners that go to a specific mechanic
  all_cars_per_mechanic.map {|car| car.owner}.uniq
end

def car_owners_names_list #list of all car owner names that go to spec mechanic
  car_owners_list.map {|owner| owner.name}
end
end
