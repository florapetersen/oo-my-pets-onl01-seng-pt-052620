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
    Cat.all.select {|cat| cat.owner == self} #iterates through ALL cats and selects only the owners
    #where self is the owner
  end

  def dogs #returns collection of all dogs belonging to the owner
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    Cat.new =  #can buy an instance of the Cat class. Take a cat instance and assign it to self?
    cat.owner = self
  end

end
