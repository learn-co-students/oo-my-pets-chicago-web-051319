require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :cat, :dog

  @@all = []


  def initialize(species)
    @species = species
    @name = name
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
      selling_pets = {}
      selling_pets[:dogs] = @pets[:dogs].each {|dog| dog.mood = "nervous"}
      selling_pets[:cats] = @pets[:cats].each {|cat| cat.mood = "nervous"}
      selling_pets[:fishes] = @pets[:fishes].each {|fish| fish.mood = "nervous"}
      @pets = @pets.values.clear
    end

  def list_pets
	   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
	end

end
