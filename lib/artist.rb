class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def self.add_song(song)
    @@songs << song
  end
end
