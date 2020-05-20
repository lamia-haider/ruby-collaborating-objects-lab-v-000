class Artist
<<<<<<< HEAD
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
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

  def self.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name == name} == nil
      self.new(name)
    else
      self.all.detect{|artist| artist.name == name}
    end
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
=======

  @@all = []

    attr_accessor :name, :songs

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
    end

    def save
      @@all << self
    end

    def self.find_or_create_by_name(name)
      self.all.detect {|artname| artname == name } || Artist.new(name)
    end

    def print_songs
      self.songs.each {|artsong| puts song.name}
    end
>>>>>>> 4dc51329dba4b72858febf0a4925db197301dfed
end
