class Song
  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")
    self.new(song_name)
  end

  def artist_name=(artist)
  end


end
