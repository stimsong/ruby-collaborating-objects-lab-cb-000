class Song
  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")
    artist = song_name[0]
    song = song_name[1]
    self.new(song)
  end

  def artist_name=(artist)
  end


end
