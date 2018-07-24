class Artist

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
    Song.all.select {|song| song.artist == self}
  end

  def genres
    artist_songs = Song.all.select {|song| song.artist == self}
    artist_songs.map {|song| song.genre}
    #or songs.map {|song| song.genre}
  end



  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end


end
