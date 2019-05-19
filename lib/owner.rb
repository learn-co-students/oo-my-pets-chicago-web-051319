class Owner
  attr_accessor :pets, :fish, :dog, :cat, :mood, :name
  attr_reader :species

@@all = []

  def initialize(name)
    @name = name
    @pets={
      fishes: [],
      cats: [],
      dogs: []
    }
    @species = "human"
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

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    @dog = Dog.new(name)
    @pets[:dogs] << @dog
  end

  def buy_fish(name)
    @fish = Fish.new(name)
    @pets[:fishes] << @fish
  end

  def play_with_cats
    @pets[:cats].each do |cats|
      cats.mood = "happy"
    end
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fishes|
      fishes.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each do |fishes|
      fishes.mood = "nervous"
    end
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cats|
      cats.mood = "nervous"
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end

class Fish
  attr_accessor :mood
  attr_reader :name
  def initialize (name)
    @name = name
    @mood = "nervous"
  end
end

class Dog
attr_reader :name, :owner
attr_accessor :mood
  def initialize (name)
    @name = name
    @mood = "nervous"
  end
end

class Cat
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize (name)
    @name = name
    @mood = "nervous"
  end
end
