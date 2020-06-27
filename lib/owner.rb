class Owner
  attr_reader :name, :species #you can only read this, can't set it, so it can't change

  @@all = []

  def initialize(name)
    @name = name #takes in name upon initialization and sets to @name variable
    @species = "human" #species is set to human
    @@all << self
  end

  def say_species #says species
    "I am a human."
  end

  def self.all #returns all instances of owners
    @@all
  end

  def self.count #returns number of owners in @@all
    @@all.count
  end

  def self.reset_all #resets the owners that have been created, @@all is empty
    @@all = []
  end

  def cats #returns collection of all cats belonging to the owner 
end
