class CarOwner

  attr_reader :name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
   
  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.car_owner == self}
  end

  def mechanics
    cars.map{|car| car.mechanic}
  end

  def self.average_cars
    Car.all.length.to_f / self.all.length
  end


  


 



  
end



#  def get_mechanic(car)
#   Mechanic.new(car:car, car_owner:self)
#  end

 # def buy_car(make:, model:, classification:, mechanic:)
  #   new_car = Car.new(make:make, model:model, classification:classification, 
  # end
