require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song=self.new
    @@all<<song
    song
  end

  def self.new_by_name(the_name)
    song=Song.create
    song.name=the_name
  end


  def self.create_by_name(name)
    song=Song.new_by_name(name)
    @@all<<song
  end

  binding.pry


  def initialize
  end

  def save
    self.class.all << self
  end

end
