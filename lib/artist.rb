# class Artist
#
#   attr_accessor :name
#
#   def initiaize(name)
#     @name = name
#   end
#
#   def new(name)
#     self.name = name
#   end
#
# end


class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
<<<<<<< HEAD
    Song.all.select do |song|
      song.artist == self
    end
    # Song.all.count
  end

  def self.song_count
    # @@song_count
    Song.all.count
=======
    @songs
  end

  def self.song_count
    @@song_count
>>>>>>> 2015cf8666cfe89ca0ef87fc7fa0041b5ed2ea82
  end
end
