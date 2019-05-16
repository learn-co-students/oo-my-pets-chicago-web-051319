require 'pry'
class Owner
  # binding.pry
  attr_accessor :pets, :name

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << @pets
    # binding.pry
    @@count += 1
  end

  def self.all
     @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def species
    self.name
  end

  def say_species
    "I am a #{self.name}."
  end

  def walk_dogs
    @pets[:dogs].pop.mood = "happy"
  end

  def play_with_cats
    @pets[:cats].pop.mood = "happy"
  end

  def feed_fish
    @pets[:fishes].pop.mood = "happy"
  end

  def sell_pets
    # binding.pry
    @pets[:fishes].each{ |x| x.mood = "nervous"}
    @pets[:cats].each{ |x| x.mood = "nervous"}
    @pets[:dogs].each{ |x| x.mood = "nervous"}
    @pets = []
  end

  def list_pets
    # binding.pry
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
