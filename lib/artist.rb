class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []  #each instance of artist has its own array of songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name(name)
    if self.all.detect do |artist| artist.name == name || self.new(name)
    end
  end
end
