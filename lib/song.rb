class Song
    extend Concerns::Findable
    attr_accessor :name 
    attr_reader :artist, :genre
    
    @@all = []
    
    def self.all
      @@all
    end
    
    def self.destroy_all
      all.clear
    end  
    
    def self.create(name)
      new(name).save
    end
    
     def self.new_by_filename(filename)
     
    end  
    
    def initialize(name, artist=nil, genre=nil)
      @name = name
      self.artist = artist
      self.genre = genre
    end
    
    def save
      @@all << self
      self
    end
    
    def artist=(artist) 
      @artist = artist
      artist.add_song(self) if artist
    end
    
    def genre=(genre) 
      @genre = genre
      genre.add_song(self) if genre
    end
  end  
    