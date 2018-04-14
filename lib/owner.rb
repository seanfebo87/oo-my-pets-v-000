class Owner
  attr_accessor :name, :pets
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
 
 def buy_cat(name)
   new_cat = Cat.new(name)
   self.pets[:cats] << new_cat
 end
 
 def buy_dog(name)
   new_dog = Dog.new(name)
   self.pets[:dogs] << new_dog
 end
 
 def walk_dogs
   @pets[:dogs].each{|dog|dog.mood ="happy"}
 end
 
 def play_with_cats
   @pets[:cats].each{|cat|cat.mood = "happy"}
 end
 
 def feed_fish
   @pets[:fish].each{|fish|fish.mood = "happy"}
   
   
end