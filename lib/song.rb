class Song
  attr_accessor :name, :artist, :songs

  def initialize(name = "nil")
    @name = name
  end

  def self.new_by_filename(file)
    artist_song = file.split(" - ")
    artist = artist_song[0]
    song = artist_song[1]
    new_song = self.new
    new_song.name = song
    new_song.artist = artist
  end

  def artist_name=(artist)
  end


end
