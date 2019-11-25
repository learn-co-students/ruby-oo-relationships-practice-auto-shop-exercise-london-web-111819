class CarOwner

  attr_reader :name

  @@all = []
  
  def initialize(name:)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_belong_to
    #Get a list of all the cars that a specific owner has
    Car.all.select{|car|car.owner == self}
  end

  def mechanics_visited
    #Get a list of all the mechanics that a specific owner goes to
    Car.all.select{|car|car.owner == self}.map{|car|car.mechanic}
  end

  def self.average_cars_owned
    #Get the average amount of cars owned for all owners
    Car.all.count.to_f/CarOwner.all.count.to_f
  end


end
