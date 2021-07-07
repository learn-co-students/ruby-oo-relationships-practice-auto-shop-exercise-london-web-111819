require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

basri = CarOwner.new(name:"Basri Car Owner")
arda  = CarOwner.new(name:"Arda Car Owner")
brenda = CarOwner.new(name:"Brenda Car Owner")
mechanic_mike = Mechanic.new(name:"Mechanic Mike",specialty:"Family")
mechanic_spiros = Mechanic.new(name:"Mechanic Spiros",specialty:"Family")

mechanic_john = Mechanic.new(name:"Mechanic John",specialty:"Sport")
mechanic_jane = Mechanic.new(name:"Mechanic Jane",specialty:"Small")
mechanic_ali = Mechanic.new(name:"Mechanic Ali",specialty:"Small")

p3008 = Car.new(make:"Peugeot",model:"3008",classification:"Family",owner:basri,mechanic:mechanic_mike)
p107 =  Car.new(make:"Peugeot",model:"107",classification:"Small",owner:arda,mechanic:mechanic_jane)
brz = Car.new(make:"Subaru",model:"BRZ",classification:"Sport",owner:basri,mechanic:mechanic_john)
mondeo = Car.new(make:"Ford",model:"Mondeo",classification:"Family",owner:brenda,mechanic:mechanic_spiros)
accent = Car.new(make:"Hyundai",model:"Accent",classification:"Family",owner:basri,mechanic:mechanic_spiros)

CarOwner.all
basri.cars_belong_to
mechanic_jane.names_car_owners_served
brz.matching_mechanics
arda.mechanics_visited
CarOwner.average_cars_owned
Car.all_car_classifications
mechanic_john.names_car_owners_served
mechanic_john.car_owners_served
mechanic_spiros.names_car_owners_served
accent.matching_mechanics

binding.pry
