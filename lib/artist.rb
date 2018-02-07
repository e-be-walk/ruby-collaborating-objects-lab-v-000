class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @song = []
  end

  def save
    @@all << self
  end


  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
