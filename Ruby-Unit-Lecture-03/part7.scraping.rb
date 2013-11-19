require 'nokogiri'
require 'open-uri'

html = open('http://newyork.craigslist.org/roo/')

doc = Nokogiri::HTML(html)

rents = doc.css("span.itemph")
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

