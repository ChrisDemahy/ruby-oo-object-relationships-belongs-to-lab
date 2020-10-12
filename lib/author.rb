# Describes an author 
class Author
  ### CLASS DEFINITIONS ###

  # class variables
  @@all = [] #all authors

  # class readers and writers
  def self.all
    @@all
  end


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :name

  # default constructor 
  def initialize(name=nil)
    self.name = nil
    self.save
  end
  
  # default save
  def save 
    self.class.all << self
  end

end