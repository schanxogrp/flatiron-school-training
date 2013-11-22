require 'nokogiri'
require 'open-uri'

class VenueScraper
	  def landing_page_html
	  		html = open("http://wedding.theknot.com/wedding-resources/wedding-reception-venues.aspx")
			doc = Nokogiri::HTML(html)
	  end

	  def request_html(url)
	  		html = open(url)
	  		doc = Nokogiri::HTML(html)
	  		return doc
	  end


	  def node_text(nokogiri,selector)
			values = nokogiri.css(selector)
			anchor_tags = Array.new
			values.each do |value|
				anchor_tags.push(value.content.strip)
				#puts value.content.strip
			end
			anchor_tags
	  end

      def hit(pins)
      end

      def score
      0
      end

      def helloworld
      	"hello"
      end

end

vs = VenueScraper.new
vs.request_html("http://www.theknot.com")
puts vs.to_s.length