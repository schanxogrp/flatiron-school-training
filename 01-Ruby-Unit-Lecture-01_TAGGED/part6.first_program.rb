# Given:
# 5 songs of the following lengths in seconds
# 223,215,378,324,254

# Goals:
# Assign the length set to variables
# Calculate the Total Length of the Playlists
# Express the Length in Minutes
# Average Song Length in Minutes

songs = [223,215,378,324,254]
variables = songs.length
total_length = 0
songs.each do |song|
	total_length = total_length + song
end
total_length_minutes =  total_length.to_i / 60 
total_length_seconds = total_length.to_i % 60

puts "Total Length of the Playlist in seconds: #{total_length}"
puts "Total Length of the Playlist in minutes: #{total_length_minutes}:#{total_length_seconds}"


average_song_length = total_length/5.0
average_song_length_minutes = average_song_length.to_i / 60
average_song_length_seconds = average_song_length.to_i % 60
puts "Average Length of the Playlist in minutes: #{average_song_length_minutes}:#{average_song_length_seconds}"