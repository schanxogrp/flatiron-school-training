class Song
  attr_accessor :name, :artist

  def formatted_name
    "#{self.artist.name} - #{self.name}"
  end
end

class Artist
  attr_accessor :name
end

class Jukebox
  attr_accessor :songs

  def initialize
    @songs = []
  end

  def artists #=> "Phoenix, The Cults"
    songs.collect{|song| song.artist}
  end

  def artist_names
    artists.collect{|a| a.name}
  end

  def browse_artists
    puts artist_names
  end

  def add
    puts "Enter a song - name to add"
    new_song = gets.downcase.strip
    self.add_songs(new_song)
  end

  def add_songs(songs)
    [songs].flatten.each do |song|
      parts = song.split(" - ")

      artist = Artist.new
      artist.name = parts.first

      song = Song.new
      song.name = parts.last
      song.artist = artist

      self.songs << song
    end
  end

  def list
    # iterate through all songs
    # put the song name
    songs.each_with_index do |song, int|
      puts "#{int+1}: #{song.formatted_name}"
    end
  end
end

songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

jukebox = Jukebox.new
jukebox.add_songs(songs)

command = ''

while command != 'exit'
  puts "Enter a command: "
  command = gets.downcase.strip

  if [:list, :browse_artists, :exit, :add, :play].include?(command.to_sym)
    jukebox.send(command)
  else
    puts "I don't know what you're talking about..."
  end
end
