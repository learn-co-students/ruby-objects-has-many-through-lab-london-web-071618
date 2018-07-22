class Artist

  attr_accessor :name

@@all = []

#has a name
  def initialize(name)
    @name = name
    @@all << self
  end

#knows about all artist instances
  def self.all
    @@all
  end

#new_song given a name and genre, creates a new song associated with that artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

#songs has many songs
  def songs
    Song.all.select {|element| element.artist == self }
  end

#genres has many genres, through songs
  def genres
    songs = self.songs
    songs.collect {|element| element.genre }
  end

  end
