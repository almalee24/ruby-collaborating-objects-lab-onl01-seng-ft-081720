class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @song = []
    @@all << self
  end 
  
  def self.all 
   @@all
  end
  
  def add_song(song)
    @@song << song
  end
  
  def songs 
    
  end
end