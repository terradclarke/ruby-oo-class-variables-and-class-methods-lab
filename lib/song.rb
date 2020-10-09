class Song

    @@count = 0 
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre 

    def initialize (name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@artists << self.artist 
        @@genres << self.genre 
    end 

    def self.count  
        @@count 
    end 

    def self.artists 
        @@artists.uniq() 
    end 

    def self.genres 
        @@genres.uniq()
    end 

    def self.genre_count 
        #iterates over the array and returns a hash where keys=genre and values=num of song with genre
        genre_count = {}
        @@genres.each do |genre| 
            if genre_count[genre]
                genre_count[genre] += 1 
            else genre_count[genre] = 1 
            end 
        end 
            genre_count
    end 

    def self.artist_count 
        #iterates over the array and returns a hash where key=artist and value=num of songs with artist 
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1 
            else artist_count[artist] = 1 
            end 
        end 
        artist_count
    end 

end 