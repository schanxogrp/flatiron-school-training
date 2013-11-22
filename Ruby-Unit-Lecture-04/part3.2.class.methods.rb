
require_relative 'lib/assert_equal'



class Artist
  attr_accessor :name, :rank
  @@artists = []

  def initialize
    @@artists << self
  end

  def self.top_5
    # sort all artists by their ranking
    @@artists.sort_by{|a| a.rank}[0..4]
  end

  def self.all
    @@artists
  end
end

gaga = Artist.new
gaga.rank = 3
gaga.name = "Gaga"
britney = Artist.new
britney.name = "britney"
britney.rank = 4
jespen = Artist.new
jespen.name = "Carly Rae"
jespen.rank = 2
robyn = Artist.new
robyn.name = "Robyn"
robyn.rank = 1

assert_equal Artist.all, [gaga, britney, jespen, robyn]

assert_equal Artist.top_5.first, robyn

class Artist
  attr_accessor :rank, :name
  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  reset_artists

  def initialize
    @@artists << self
  end

  def self.top_5
    self.all.sort_by{|a| a.rank}[0..5]
  end
end

begin
  artist = Artist.new
  artist.rank = 1
  assert_equal artist.rank, 1
rescue => e
  puts e
end

begin
  top_artist_names = ["Adele",
                                                  "LMFAO",
                                                  "Katy Perry",
                                                  "Pitbull",
                                                  "Bruno Mars"]

   Artist.reset_artists

   top_artist_names.each_with_index do |artist_name, index|
    a = Artist.new
    a.name = artist_name
    a.rank = index+1
   end

  assert_equal Artist.all.length, 5

  assert_equal Artist.top_5.collect{|a| a.name}, ["Adele",
                                                  "LMFAO",
                                                  "Katy Perry",
                                                  "Pitbull",
                                                  "Bruno Mars"]
rescue => e
  puts e
end
