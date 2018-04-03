class Song
  attr_accessor :song_name, :artist_name

  def initialize(song_name)
    @song_name = song_name
  end

  def new_by_filename(file)
    songs = []
    file.each do |song|
      songs << song.slice(" - ")
    end
  end

  def artist_name=(artist_name)
  end


end
