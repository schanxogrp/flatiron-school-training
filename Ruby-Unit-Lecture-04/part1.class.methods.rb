require_relative 'lib/assert_equal'

# # In ruby everything is an object. Or according to David Black,
# # "everything in ruby evaluates to an object."

# # Classes are Objects too.
# class Artist
# end

# artist_class = Artist
# puts artist_class.object_id

# # Our goal is the following:
# begin
#   assert_equal Artist.top_5.collect{|a| a.name}, ["Adele",
#                                                   "LMFAO",
#                                                   "Katy Perry",
#                                                   "Pitbull",
#                                                   "Bruno Mars"]
# rescue => e
#   puts e
# end

# # Class Methods

# # In 'Artist.top_5', what is the receiver of the message 'top_5'?
# # The Artist class. Thus, as an object, the Artist class supports methods
# # We've seen this everytime we use the new method to instantiate a new instance
# # of a class.

# # Defining a class method is simple.
# class Artist
#   def Artist.top_5 # The most literal class definition possible.
#     puts "Top 5!!!"
#   end
# end

# Artist.top_5

# # With the def Class.method_name syntax the scope of the method
# # is explicitly defined as belong to the Artist class.

# # That method definition could infact even exist outside of the class.
# def Artist.really_bad # The most literal class definition possible.
#   puts "Don't do this."
# end

# Artist.really_bad

# # Instead of being so explicit, take advantage of the implicit scope within
# # a class. A method is always defined on the current scope (self).

# class Artist
#   puts self

#   def self.convention
#     puts "We like this convention"
#   end

# end

# Artist.convention
# Artist.class_self

# Back to the Artist.top_5 method.

# In order for this to work, we need to create Artists and give them ranking.
class Artist
  attr_accessor :rank, :name

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.top_5
    self.all.sort_by{|a| a.rank}[0..5]
  end


end

gaga = Artist.new
gaga.rank = 3
britney = Artist.new
britney.rank = 4
jespen = Artist.new
jespen.rank = 2
robyn = Artist.new
robyn.name = "Robyn"
robyn.rank = 1

assert_equal Artist.all, [gaga, britney, jespen, robyn]


assert_equal Artist.top_5.first, robyn














# class Artist
#   attr_accessor :name, :rank

#   def self.reset_artists
#     @artists = []
#   end

#   def self.all
#     @artists
#   end

#   reset_artists


#   def initialize
#     Artist.all << self
#   end

#   def self.top_5
#     self.all.sort_by{|a| a.rank}[0,5]
#   end



# end

# begin
#   artist = Artist.new
#   artist.rank = 1
#   assert_equal artist.rank, 1
# rescue => e
#   puts e
# end


# begin
#   top_artist_names = ["Adele",
#                                                   "LMFAO",
#                                                   "Katy Perry",
#                                                   "Pitbull",
#                                                   "Bruno Mars"]

#    Artist.reset_artists

#    top_artist_names.each_with_index do |artist_name, index|
#     a = Artist.new
#     a.name = artist_name
#     a.rank = index+1
#    end

#    assert_equal Artist.all.length, 5

#   assert_equal Artist.top_5.collect{|a| a.name}, ["Adele",
#                                                   "LMFAO",
#                                                   "Katy Perry",
#                                                   "Pitbull",
#                                                   "Bruno Mars"]
# rescue => e
#   puts e
# end

# # The top_5 method must iterate through all the artists that are created,
# # sort them by ranking, and then return the first 5.

# # To do that, the Artist class must somehow be aware of all the artists that
# # have been created.
