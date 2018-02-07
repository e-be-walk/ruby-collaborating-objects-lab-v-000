class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @song = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
