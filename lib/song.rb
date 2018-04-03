class Song
  attr_accessor :name, :artist_name, :songs

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_name = file.slice(" - ")
    self.new(song_name)
  end

  def artist_name=(artist_name)
  end


end
