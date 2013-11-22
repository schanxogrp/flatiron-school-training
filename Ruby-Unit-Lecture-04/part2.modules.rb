require 'pry'

module Rankable
  def top_5
    all.sort_by{|a| a.rank}[0..4]
  end
end

module Initializable
  def initialize
    @@all << self
  end
end

class Song
  extend Rankable
  include Initializbale

  attr_accessor :name, :rank
  @@songs = []

  def initialize(name)
    super
    @name = name
  end

  def self.all
    @@songs
  end
end


class Artist
  extend Rankable
  include Rankable

  attr_accessor :name, :rank, :songs
  @@artists = []
  alias :all :songs

  def initialize(name)
    @name = name
    @@artists << self
  end


  def self.all
    @@artists
  end
end

kanye = Artist.new("Kanye")
runaway = Song.new("Runaway")
runaway.rank = 1
monster = Song.new("Monster")
monster.rank = 2

kanye.songs = [runaway, monster]
# kanye.top_5

binding.pry











# # Modules are way for Ruby classes to share bits and pieces of code.
# module Ranking
#   def top_5
#     all.sort_by{|thing| thing.rank}
#   end
# end

# class Artist
#   extend Ranking

#   @@all = []
#   attr_accessor :rank

#   def initialize
#     @@all << self
#   end

#   def self.all
#     @@all
#   end
# end

# class Song
#   extend Ranking

#   @@all = []
#   attr_accessor :rank

#   def initialize
#     @@all << self
#   end

#   def self.all
#     @@all
#   end
# end

# Song.new.rank = 1
# Song.top_5

# Artist.new.rank = 1
# Artist.top_5
