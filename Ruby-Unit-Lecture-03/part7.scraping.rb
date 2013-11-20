require 'nokogiri'
require 'open-uri'

html = open('http://newyork.craigslist.org/roo/')

doc = Nokogiri::HTML(html)

rents = doc.css("span.price")
#
# for each individual listing
total_rent_price = 0
real_listings = 0
rents.each do |rent|

# collect the content (which is a string that represent the rent)
price_str = rent.content
# puts price_str
if !price_str.strip.empty?
  real_listings += 1
  price = price_str.split("/").first.gsub("$", "").strip.to_i
  total_rent_price += price
end
end
puts total_rent_price.to_f/real_listings
# turn that string into a number
# add all the rents together
# divide by amount of listings
# => average rent of a room

#links = doc.css("a")
#links[0].attributes["href"].value]


#scrape theknot and get a hash of all reception venues sorted by state
#capture name/addres/phone/website

the_knot = {
	:alaksa => {
		:venues => {[{
			:name => "place",
			:address => "123 fake street",
			:phone => "123456789",
			:website => "www.place.ly"
			}]
		}
	}
}

#find the first venue that is located in alaska
the_knot[:alaska][:venues].first

#http://wedding.theknot.com/wedding-resources/wedding-reception-venues.aspx

#Homework
#Scrape The Knot - Get all reception venues by state, including name/address/phone/website. store in hash. We'll use this hash on thursday.

#Parse the Reddit API: https://gist.github.com/spencer1248/4f4c409e3d3d231342b6
#instead of scraping, use the api to get JSON and parse that.
