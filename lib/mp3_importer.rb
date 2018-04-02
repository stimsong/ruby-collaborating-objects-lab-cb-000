class MP3Importer
  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    # gets only files that end in .mp3 from @path directory, stores in filenames
    filenames = Dir.glob("#{@path}/*.mp3")

    # trying to strip each filename up to the last slash(/) by finding the index
    # number and using slice to return everything after that
    filenames.each do |file|
      last_slash_index = file.rindex(/\//)
      alt_filenames = file.slice(last_slash_index)
    end

    filenames
  end

  def import
  end


end

# You should write code that responds to MP3Importer.new('./db/mp3s').import
