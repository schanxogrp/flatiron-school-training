require './bowling'

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end


describe Bowling, "#score" do
	 it "returns 0 for all gutter game" do
	 bowling = Bowling.new
	 20.times { bowling.hit(0) }
	 bowling.score.should eq(0)
	 end

	 it "returns 'hello'" do
	 	bowling = Bowling.new
	 	bowling.helloworld.should eq("hello")
	 end

end
