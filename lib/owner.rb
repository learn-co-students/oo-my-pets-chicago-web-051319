class Owner
  attr_writer :name
  attr_reader :species
  attr_accessor :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets.each {|pets, pet_species|
      pet_species.each {|pet| pet.mood = 'nervous'}
      pet_species.clear
    }
  end

  def list_pets
    num_fish = @pets[:fishes].size
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end
