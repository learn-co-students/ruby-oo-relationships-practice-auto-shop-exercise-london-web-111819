class Car
  
  attr_reader :make, :model, :classification, :mechanic, :owner

  @@all = []
  

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  
  end

  def self.all
    @@all      #shows whats in the all array after instantiation
  end

  def self.classifications
    self.all.map {|car| car.classification} #shows all classifications of car class in
  end                           #an array- prints each type once only

  #the above code can also be written as self.all.map(&:classification)

  def mechanics_list #list of mechanics that have an expertise that 
   Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end                   #matches the car classification


  

end
