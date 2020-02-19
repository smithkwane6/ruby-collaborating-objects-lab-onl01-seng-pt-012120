class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs= []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def songs
    @songs
  end

  def save
    @@all << self
    self
  end

  def self.all
    @all
  end

  end
