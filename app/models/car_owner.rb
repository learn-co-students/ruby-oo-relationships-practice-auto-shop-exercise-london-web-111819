require 'pry'

class CarOwner

  attr_reader :name
  attr_accessor :make, :model, :classification
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  # def car(make, model, classification, car_owner, mechanic)
  #   Car.new(make,model, classification, self, mechanic)
  # end

  def cars
    Car.all.filter {|car| car.car_owner == self}
  end

  def mechanics
    cars.map {|car| car.mechanic }.uniq  #make sure mechanic isn't repeated
  end

  def self.average_cars_owned
    #total number of cars divided by the total number of car owners
    Car.all.length.to_f/self.all.length #conver the first number two a float -- question, mathematically wouldn't you round down since you can't have 'half' a car 
  end


end
