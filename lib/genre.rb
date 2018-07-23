class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre.name == self.name}
  end

  def artists
    songs.map {|x| x.artist}
  end

end
