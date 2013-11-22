require './tk_venues_scraper'

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end


describe VenueScraper, "#landing_page" do
  venue_scraper = VenueScraper.new
  landing_page = "http://wedding.theknot.com/wedding-resources/wedding-reception-venues.aspx"
  landing_page_html = venue_scraper.request_html(landing_page)
   it "returns html is not nil" do
      landing_page_html.should_not eq nil
   end

   it "returns node text for anchor links" do
      venue_scraper.node_text(landing_page_html,"a").length > 1
   end

end


describe VenueScraper, "#state_page" do
  venue_scraper = VenueScraper.new
  state_page = "http://www.theknot.com/Vendors/Phoenix-Wedding-Venues/Profiles/CAR/177?page=1.ALL"
  state_page_html = venue_scraper.request_html(state_page)
  it "returns html is not nil" do
      state_page_html.should_not eq nil
   end

   it "returns node text for anchor links" do
      venue_scraper.node_text(state_page_html,"a").length > 1
   end

end


describe VenueScraper, "#venue_detail_page" do
  venue_scraper = VenueScraper.new
  venue_page = "http://www.theknot.com/Vendors/NOAHS/Profile/CAR/177/367277/profile?sid=uTKqQAD1LQs2CsZmL9xYug"  
  venue_page_html = venue_scraper.request_html(venue_page)
   it "returns html is not nil" do
      venue_page_html.should_not eq nil
   end

   it "returns node text for anchor links" do
      venue_scraper.node_text(venue_page_html,"a").length > 1
   end

end
