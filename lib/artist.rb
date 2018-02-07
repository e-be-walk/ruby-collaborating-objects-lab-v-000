class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
  end

  def self.find_or_create_by_name()
    unique_artists = []
    @@all.each do |a|
      if !unique_artists.include?(a)
        unique_artists << a
      end
    end
    unique_artists
  end


  def self.print_songs
    @@all
  end

end
