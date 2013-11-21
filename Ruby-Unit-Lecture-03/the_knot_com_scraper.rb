require 'nokogiri'
require 'open-uri'

html = open('http://localhost:3000/alaska.html')
html = open('http://localhost:3000/alabama01.html')

doc = Nokogiri::HTML(html)

#links = doc.css(".vendorSummaryInfo a")

#links.each do |link|
#	puts link.attributes["href"].value
#end


def node_text(nokogiri,selector)
	values = nokogiri.css(selector)
	values.each do |value|
		puts value.content.strip
	end
end

def puts_section_label(text)
	puts "-"*30
	puts text
	puts "-"*30
end

#puts_section_label("<h2> node text")
#node_text(doc,"h2")

#puts_section_label("<a> node text")
#node_text(doc,"a")

puts_section_label("<a> vendorSummaryInfo")
node_text(doc,".vendorSummaryInfo a")
node_text(doc,".vendorSummaryInfo div")


#http://www.theknot.com/Vendors/New-Hampshire-Wedding-Venues/Profiles/CAR/202?page=1.ALL