class MP3Importer
  attr_accessor :path, :alt_filenames

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    @alt_filenames =[]
    # gets only files that end in .mp3 from @path directory, stores in filenames
    filenames = Dir.glob("#{@path}/*.mp3")

    # using rindex for each filename to find the last slash(/) and using that index
    # number slice to return everything after that
    filenames.each do |file|
      last_slash_index = file.rindex(/\//)
      alt_filenames << file.slice(last_slash_index+1..-1)
    end

    @alt_filenames
  end

  def import
    Song.new_by_filename(alt_filenames)
  end



end

# You should write code that responds to MP3Importer.new('./db/mp3s').import
