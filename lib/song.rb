class Song
 @@all = []
 attr_accessor :name, :artist, :genre

 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre
   @@all << self
 end #initialize

 def self.all
   @@all
 end #self.all
end #song
