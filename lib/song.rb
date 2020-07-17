
require 'pry'
class Song
    @@artists = []
    @@count = 0 
    @@genres = []
    @@all = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@genres << genre
        @@count += 1
        @@artists << artist
        @@all << self
    end

    def self.count
        @@count
    end

    def self.artists
        Song.all.reduce([]) {|artists, song| artists << song.artist}.uniq
    end

    def self.genres
        Song.all.reduce([]) {|genres, song| genres << song.genre}.uniq
    end

    def self.all
        @@all
    end

    def self.genre_count
        genre_count = {}
        
        @@genres.each do |genre|
            genre_count[genre] ||= 0 
            genre_count[genre] += 1 
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        
        @@artists.each do |artist|
            artist_count[artist] ||= 0 
            artist_count[artist] += 1 
        end
        artist_count
    end
end




# binding.pry


