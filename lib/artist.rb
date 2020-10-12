# Describes an artist
class Artist
  ### CLASS ###

  # Class variables
  @@all = [] # list of all artists

  # Reader for all class variable
  def self.all
    @@all
  end  

  
  ### INSTANCE ###

  # instance readers and writers
  attr_accessor :name
  
  # default constructor
  def initialize(name=nil)
    self.name = nil
    self.save
  end

  # saves artist instance to all class variable
  def save
    self.class.all << self
  end

end
