require "pry"

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all=[]

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
      @@all
  end

  def Owner.count
      self.all.count
  end

  def Owner.reset_all
      @@all.clear
  end



  def say_species
     return "I am a #{species}."
  end

  def name
    @name
  end

  def buy_fish(name)
      pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end


  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    #binding.pry
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end

  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end

  end

  def sell_pets
    pets.each do |species, names|
      names.each do |name|
        name.mood = "nervous"
      end
      names.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end




end
