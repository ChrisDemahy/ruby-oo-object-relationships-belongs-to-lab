
class Post
  ### CLASS DEFINITIONS ###

  # class variables
  @@all = [] #all Posts

  # class readers and writers
  def self.all
    @@all
  end
  

  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :title, :author

  # default constructor 
  def initialize(title=nil, author=nil)
    self.title = nil
    self.author = author
    self.save
  end
  
  # default save
  def save 
    self.class.all << self
  end

end