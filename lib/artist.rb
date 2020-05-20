class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def Artist.add_song(song)
    @@songs << song
  end
end
