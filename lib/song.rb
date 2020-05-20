# Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    self.name = filename.split(" - ")[1]
  end
  end


end
