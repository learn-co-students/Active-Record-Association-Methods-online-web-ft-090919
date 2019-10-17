class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.length

  end

  def all_artist_names
    names = []
    self.artists.each do |artist|
      names << artist.name
    end
    names
    # return an array of strings containing every musician's name
  end
  

end


# def get_first_song
#  self.songs.first
# end
#
# def get_genre_of_first_song
#   self.get_first_song.genre
#   #return the genre of the artist's first saved song
# end
#
# def song_count
#   self.songs.length
#   #return the number of songs associated with the artist
# end
#
# def genre_count
#   self.genres.length
#
#   #return the number of genres associated with the artist
# end
# end
