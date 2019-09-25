class Customer
  attr_reader :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @age = age
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip=0)
  end
  
  def meals
    Meal.name.all.collect do |meal|
      meal
    end
  end
  
end