class Artist
  attr_accessor :name
  @@songs_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@songs_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@songs_count += 1
    song.artist = self
  end

  def self.song_count
    @@songs_count
  end
end
