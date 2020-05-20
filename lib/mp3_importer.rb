<<<<<<< HEAD
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).reject{|entry| entry == "." || entry == ".."}
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  end

end
=======
class MP3Importer 
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end   
  
  def files
    files = [] 
    Dir.new(self.path).each do |file|
     files << file if file.length > 4 
     end  
     files  
   end     

  
  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end   
  
end   
>>>>>>> 4dc51329dba4b72858febf0a4925db197301dfed
