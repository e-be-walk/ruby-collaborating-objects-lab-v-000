class MP3Importer
  attr_accessor :path, :files, :song

  def initialize(path)
    @path = path
  end

  def files(filename)
    array = filename.split(" - ")
    artist_name = array[0]
    name = array[1].chomp(".mp3")
    song = self.new
    song.name = name
    song.artist_name = artist_name
    song
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
