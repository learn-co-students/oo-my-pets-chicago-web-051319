class Owner
  # code goes here
  attr_reader :species
  
  @@all_owners = []
  
  def initialize(species="human")
    @species = species
    @name = ""
    @@all_owners << self
    @pets = {
      :dogs => [],
      :cats => [],
      :fishes => []
    }
  end
  
  def self.all
    @@all_owners
  end
  
  def self.count
    @@all_owners.length
  end
  
  def self.reset_all
    @@all_owners = []
  end
  
  def name
    @name
  end
  
  def name=(nam)
    @name = nam
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def pets
    @pets
  end
  
  def pets=(pe)
    @pets = pe
  end
  
  def buy_fish(name)
    temp = Fish.new(name)
    @pets[:fishes] << temp
  end
  
  def buy_cat(name)
    temp = Cat.new(name)
    @pets[:cats] << temp
  end
  
  def buy_dog(name)
    temp = Dog.new(name)
    @pets[:dogs] << temp
  end
  
  def walk_dogs
    @pets[:dogs].each do |i|
      i.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |i|
      i.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |i|
      i.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |k , v|
      v.each do |i|
        i.mood = "nervous"
      end
    end
    
    @pets = {} #so this is what you wanted
  end
  
  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end