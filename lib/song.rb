require 'pry'
class Song
attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << self.artist
        @@genres << self.genre
        @@count +=1
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.count 
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_counter = {}
        @@genres.each do |genre|
            if genre_counter[genre]
                genre_counter[genre] +=1 
            else 
                genre_counter[genre] = 1
            end
        end 
    genre_counter
    end

    def self.artist_count
        artist_counter ={}
        @@artists.each do |artist|
            if artist_counter[artist]
                artist_counter[artist] += 1
            else
                artist_counter[artist]  = 1
            end
        end
        artist_counter
    end
end



song1= Song.new("Bo", "Rita", "Israeli")
song2= Song.new("Bad", "Gaga", "pop")
song3= Song.new("Baaaa", "Drake", "pop")
# binding.pry