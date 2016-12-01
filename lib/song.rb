class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count_detail = {}
    @@genres.each do |genre_type|
      genre_count_detail[genre_type] ? genre_count_detail[genre_type] += 1 : genre_count_detail[genre_type] = 1
    end
    genre_count_detail
  end

  def self.artist_count
    artist_song_count = {}
    @@artists.each do |artist|
      artist_song_count[artist] ? artist_song_count[artist] += 1 : artist_song_count[artist] = 1
    end
    artist_song_count
  end
end
