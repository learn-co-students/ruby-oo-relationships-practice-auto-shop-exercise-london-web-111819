class CarOwner

  attr_reader :name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end



  def self.all      #car_owner instances array
    @@all
  end

  def cars_per_owner
    #get a list of cars thats a specific owner has. 
    Car.all.select {|car| car.owner == self}
  end

  def mechanics_per_owner
    #get a list of mechanics thats a specific owner has. 
    cars_per_owner.map {|car| car.mechanic}.uniq #remove duplicates of mechanic
  end

  def self.average_cars_per_owner
    Car.all.length.to_f/ self.all.length
    
    #Get the average amount of cars owned for all owners
    #all cars divided by car owners. convert to float so it doesnt round
    #best to put to_f coversion on first number in an equn
  end
end
