require 'pry'

class Artist

attr_accessor :name, :genre, :song
attr_writer :artist

@@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    song.artist = self
    song = Song.new(song, genre)
  end
end
