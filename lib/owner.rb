class Owner
  attr_accessor :name, :pets 
  attr_reader :species
 @@all = []
 def initialize(name)
   @name = name
   @species = "human"
   @pets = {:cats => [], :dogs => [], :fishes}
   @@all << self
 end
 
 def self.all
   @@all
 end
 
 def self.count
   @@all.count
 end
 
 def self.reset_all
   @@all.clear
 end
 
 def say_species
   "I am a #{@species}."
 end
 

   
end