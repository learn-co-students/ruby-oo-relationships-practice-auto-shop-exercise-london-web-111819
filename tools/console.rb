# require_relative '../config/environment.rb'
require_relative '../app/models/car_owner.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/mechanic.rb'
require 'pry'

# def reload
 #  load 'config/environment.rb'
#end


owner1 = CarOwner.new("john")
owner2 = CarOwner.new("gary")

mechanic1 = Mechanic.new("charlies", "antique")
mechanic2 = Mechanic.new("M1 Trades", "classic")
mechanic3 = Mechanic.new("Handy Larrys", "clunkers")
mechanic4 = Mechanic.new("Bobs", "clunkers")

car1 = Car.new("BMW", "X5", "classic", mechanic1, owner1)
car2 = Car.new("BMW", "P2", "clunker", mechanic2, owner1)
binding.pry