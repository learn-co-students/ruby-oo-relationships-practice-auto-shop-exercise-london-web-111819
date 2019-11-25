# require_relative '../config/environment.rb'

# def reload
#   load 'config/environment.rb'
# end
require_relative '../app/models/car_owner.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/mechanic.rb'
require 'pry'

own1 = CarOwner.new('Owner1')
own2 = CarOwner.new('Owner2')
own3 = CarOwner.new('Owner3')


mech1 = Mechanic.new('Mech1', 'classic')
mech2 = Mechanic.new('Mech2', "clunker")
mech3 = Mechanic.new('Mech3', 'exotic')


car1 = Car.new('Benz', 'C-class', 'exotic', own1, mech3)
car2 = Car.new('Beemer', '3 Series', 'classic', own2, mech1)
car3 = Car.new('Bentley', 'Bentayga', 'clunker', own3, mech2)
binding.pry
