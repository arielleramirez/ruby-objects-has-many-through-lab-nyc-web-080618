class Artist
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def new_song(name, genre)
    Song.new(name, self, genre)
  end #new_song

  def songs
    Song.all.select do |song|
      song.artist == self
    end #Song.all.select
  end #songs

  def genres
    songs.map do |song|
      song.genre
    end #songs.map
  end # genres
end #artist
