class Song
  attr_accessor :song_name, :artist_name, :songs

  def initialize(song_name)
    @song_name = song_name
  end

  def self.new_by_filename(file)
    self.new = file.slice(" - ")
  end

  def artist_name=(artist_name)
  end


end
