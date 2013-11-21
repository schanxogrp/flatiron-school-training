require 'nokogiri'
require 'open-uri'

html = open('http://localhost:3000')

html = open('http://www.theknot.com')

html = open("http://wedding.theknot.com/wedding-resources/wedding-reception-venues.aspx")


doc = Nokogiri::HTML(html)

links = doc.css("a")

links.each do |link|
	puts link.attributes["href"].value
end


def node_text(nokogiri,selector)
	values = nokogiri.css(selector)
	values.each do |value|
		puts value.content
	end
end

def puts_section_label(text)
	puts "-"*30
	puts text
	puts "-"*30
end

puts_section_label("<h2> node text")
node_text(doc,"h2")

puts_section_label("<a> node text")
node_text(doc,"a")