class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def save
    @@all << self 
    self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(filename)
    splitname = filename.split(" - ")
    new_song = self.new(splitname[1])
    new_song.artist_name = splitname[0]
    new_song.save
  end
  
  def artist_name=(name)
  end
  
end