require 'pry'

class Artist
  attr_accessor :name



  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    Song.all
  end

  def save
    Song.all << self
  end

  def songs
    @songs

  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if new_artist = Song.all.find{|artist| artist.name == name}
      new_artist
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
    binding.pry
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
