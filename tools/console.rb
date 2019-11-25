require_relative '../config/environment.rb'
# require 'app/models/car_owner.rb'
# require 'app/models/car.rb'
# require 'app/models/mechanic.rb'
# require 'pry'

def reload
  load 'config/environment.rb'
end


jeff = CarOwner.new("Jeff")
lisa = CarOwner.new("Lisa")

mechanic1 = Mechanic.new("Bill", "Sports Car")
mechanic2 = Mechanic.new("Tony", "Hatchback")
mechanic3 = Mechanic.new("Sam", "Sports Utility Vehicle")

car1 = Car.new("Audi", "R8", "Sports Car", jeff, mechanic1) 
car2 = Car.new("BMW", "X5", "Sports Utility Vehicle", lisa, mechanic3)
car3 = Car.new("Audi", "A3", "Hatchback", jeff, mechanic2)
car4 = Car.new("BMW", "i3", "Hatchback", lisa, mechanic2)



binding.pry

0
