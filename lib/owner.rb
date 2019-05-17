class Owner
  # code goes here
  attr_accessor :pets,:name
  attr_reader :species,:pets

  @@all=[]
  @@count

  def initialize(pets)
    @pets = {fishes:[], cats:[], dogs:[]}
    @@all<< self
    @species="human"
  end

  def self.all
    @@all
  end

  def self.count
    @@count=@@all.count
  end

  def self.reset_all
    @@all=[]
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes]<<Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats]<< Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]<< Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs]=@pets[:dogs].each { |dog| dog.mood="happy"  }
  end

  def play_with_cats
    @pets[:cats]=@pets[:cats].each { |cat| cat.mood="happy"  }
  end

  def feed_fish
    @pets[:fishes]=@pets[:fishes].each { |fish| fish.mood="happy"  }

  end

  def sell_pets

    @pets=@pets.values.each do |pet|
      pet.each do |animal|
        animal.mood="nervous"
      end
    end
    @pets.clear

  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
