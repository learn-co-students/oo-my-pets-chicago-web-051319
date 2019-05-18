require 'pry'
class Owner
  # code goes here
  attr_accessor :fish, :dog, :cat, :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
      }
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
    p "I am a #{@species}."
  end


  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    selling_pets = {}
    selling_pets[:dogs] = @pets[:dogs].each {|dog| dog.mood = "nervous"}
    selling_pets[:cats] = @pets[:cats].each {|cat| cat.mood = "nervous"}
    selling_pets[:fishes] = @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets = @pets.values.clear
  end

  def list_pets
    p "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end