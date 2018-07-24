class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    artist_genre = Song.all.select {|song| song.genre == self}
    artist_genre.map {|song| song.artist}
  end

end
