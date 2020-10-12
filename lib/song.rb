# Describes a song
class Song
  ### CLASS DEFINITIONS ###
  
  # class variables
  @@all =[]

  # class readers 
  def self.all
    @@all
  end

  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :title, :artist

  # default constructor
  def initialize(title=nil, artist=nil)
    self.title = title
    self.artist = artist
    self.save
  end

  def save
    self.class.all << self
  end

end
