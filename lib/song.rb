class Song
  attr_accessor :name, :artist

  def initialize(name = "nil")
    @name = name
  end

  def self.new_by_filename(file)
    artist_song = file.split(" - ")
    artist = artist_song[0]
    song = artist_song[1]
    new_song = self.new
    new_song.artist = artist
    new_song.name = song
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end


end
