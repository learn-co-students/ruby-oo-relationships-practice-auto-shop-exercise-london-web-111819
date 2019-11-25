require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end


owner1 = CarOwner.new("Jack")
owner2 = CarOwner.new("Sara")

mec1 = Mechanic.new( "Supercars",  "Ian")
mec2 = Mechanic.new("Alle", "Vintage")
mec3 = Mechanic.new("Amir", "Vintage")

car1 = Car.new("Ford", "Fiesta", "Vintage", owner1, mec2)
car2 = Car.new("Ferrari", "F40", "Vintage", owner2, mec3)
car3 = Car.new("Porshce", "911", "Supercars", owner1, mec1)

binding.pry
0