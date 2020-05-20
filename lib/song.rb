class Song
<<<<<<< HEAD
  attr_accessor :name, :artist
=======

  attr_accessor :artist, :name
  @@all = []
>>>>>>> 4dc51329dba4b72858febf0a4925db197301dfed

  def initialize(name)
    @name = name
  end

<<<<<<< HEAD
  def self.new_by_filename(file)
    array = file.split(" - ")
    artist = array[0]
    song = array[1]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    new_artist.add_song(self)
    self.artist = new_artist
  end

end
=======
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end


  def self.new_by_filename(filename)
    file_data = filename.split(" - ")
    song = Song.new(file[1])
    artist = Artist.find_or_create_by_name(file[0])
    artist.add_song(song)
    song

  end

end   
>>>>>>> 4dc51329dba4b72858febf0a4925db197301dfed
