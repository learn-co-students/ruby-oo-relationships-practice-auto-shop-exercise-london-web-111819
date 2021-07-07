class Car

  attr_reader :make, :model, :classification, :mechanic, :owner

  @@all = []

  def initialize(make:,model:,classification:,owner:,mechanic:)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_car_classifications
    #Get a list of all car classifications
    Car.all.map{|car|car.classification}.uniq
  end

  def matching_mechanics
    #Get a list of mechanics that have an expertise that matches the car classification
    Mechanic.all.select{|mechanic|mechanic.specialty == self.classification}
  end

end
