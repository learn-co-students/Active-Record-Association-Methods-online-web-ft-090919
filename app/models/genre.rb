class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    artist_count = []

    self.songs.each do |song|
      if !artist_count.include?(song.artist.name)
        artist_count << song.artist.name
      end
    end
    artist_count.count
  end

  def all_artist_names
    self.songs.collect do |song|
      song.artist.name
    end
  end
end
