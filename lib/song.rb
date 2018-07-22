class Song

  attr_accessor :name, :artist, :genre

@@all = []

#new-initializes with a name, an artist, and a genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

#all knows about all song instances
  def self.all
    @@all
  end

  #genre belongs to a genre
  #artist belongs to a artist

end
