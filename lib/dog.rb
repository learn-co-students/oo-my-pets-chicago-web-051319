class Dog
  # code goes here
  attr_reader :name,:owner
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end