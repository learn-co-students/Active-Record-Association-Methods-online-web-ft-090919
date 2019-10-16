class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    genre_count = []
    self.songs.each do |song|
      if !genre_count.include?(song.genre.name)
        genre_count << song.genre.name
      end      
    end
    genre_count.count
  end


end
