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
  
end