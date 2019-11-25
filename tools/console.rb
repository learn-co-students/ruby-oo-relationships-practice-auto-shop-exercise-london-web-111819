require_relative '../app/models/car.rb'
require_relative '../app/models/car_owner.rb'
require_relative '../app/models/mechanic.rb'
require 'pry'


own1 = CarOwner.new('Owner1')
own2 = CarOwner.new('Owner2')
own3 = CarOwner.new('Owner3')

mech1 = Mechanic.new('Mechanic1', 'exotic')
mech2 = Mechanic.new('Mechanic2', 'business')
mech3 = Mechanic.new('Mechanic3', 'clunker')


car1 = Car.new('Beamer', '3-series', 'exotic', own1, mech1)
car2 = Car.new('Benz', 'E-class', 'business', own2, mech2)
car3 = Car.new('Bentley', 'Bentayga', 'clunker', own3, mech3)



binding.pry
'Done.'
