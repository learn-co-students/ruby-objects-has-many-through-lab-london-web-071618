class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @artist.songs << self
    @genre.songs << self
    @genre.artists << @artist
    @@all << self
  end

  def self.all
    @@all
  end
end
