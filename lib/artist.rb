class Artist
  attr_accessor :name
  @songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
