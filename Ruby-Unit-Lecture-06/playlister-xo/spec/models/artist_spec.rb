require 'spec_helper'

describe Artist do
	it "has name and record label" do
		#artist = Artist.new
		#artist.name = "Jethro Tull"
		#artist.record_label = "Epic"

		#artist.save

		#artist = Artist.new(:name => "jethro tull", record_label: "test")
		#artist.save
		#artist.id

		artist = Artist.create(:name => "jethro", :record_label => "test")
		expect(Artist.all.count).to eq(1)
		found = Artist.find_by(:name => "jethro")
		like = Artist.find_by("name like '%jethro%'")
		#Artist.find(1)
		Artist.where(:name => "jethro")
		#Artist.where("name ilike 'jethro'")

		Artist.find_by(:id => 1)
		expect(found).to eq(artist)

	end

	it "has songs" do 
		artist = Artist.new(name: "Snow")
		song = Song.new(title: "Informer")
		artist.songs << song
		artist.save
		expect(artist.songs.count).to eq(1)
		expect(artist.songs.first).to eq(song)
	end
  #pending "add some examples to (or delete) #{__FILE__}"
end
