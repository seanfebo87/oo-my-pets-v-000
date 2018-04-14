class Owner
  attr_accessor :name, :pets, :fish 
  attr_reader :species
 @@all = []
 def initialize(name)
   @name = name
   @species = "human"
   @pets = {:fishes => [], :dogs => [], :cats => []}
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
 
 def buy_fish(name)
   new_fish = Fish.new(name)
   self.pets[:fishes] << new_fish 
 end
   
end