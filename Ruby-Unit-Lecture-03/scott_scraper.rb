require 'nokogiri'
require 'open-uri'
#html = open('http://www.theknot.com/Vendors/Alabama-Wedding-Venues/Profiles/CAR/203')
#html = open("http://wedding.theknot.com/local-wedding-vendors/alaska-weddings.aspx")
html = open("http://www.theknot.com/Vendors/Alaska-Reception-and-Ceremony-Sites/Profiles/CAR/228")
doc = Nokogiri::HTML(html)

vendors = doc.css("div.vendor")

vendors_hash = {
	     :alaska => {
	     :venues => []
	     }
}
vendors.each_with_index do |vendor,i|
	     links = vendor.css("a")
	     vendor_link = links.first.attributes["href"].value
	     vendor_html = open("http://www.theknot.com#{vendor_link}")
	     vhtml = Nokogiri::HTML(vendor_html)
	     vendor_title = vhtml.css(".vendor-title")
	     vendor_homepage = vendor_title.css("a").first["href"]
	     vendor_name = vendor_title.css("h1").text.gsub("\r\n","")
	     vendor_address = vhtml.css(".adr").text.strip
	     vendors_hash[:alaska][:venues][i] = {
	     :name => vendor_name,
	     :address => vendor_address,
	     :website => vendor_homepage
	     }
end

puts vendors_hash
