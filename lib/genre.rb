class Genre

attr_accessor :name

@@all = []

  #name has a name
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end
#songs has many songs
  def songs
    Song.all.select {|element| element.genre == self}
  end

#artists has many artists, through songs
  def artists
    songs = self.songs
    songs.collect {|element| element.artist}
  end

end
