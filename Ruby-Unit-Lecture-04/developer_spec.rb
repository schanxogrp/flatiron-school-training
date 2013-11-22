require_relative './spec_helper'

describe Developer do

	#before :each do 
	#	@developer = Developer.new
	#end
	#this is for action, not for data setup

	let(:developer) { Developer.new }

	it "is lazy if good" do
		#pending "this is not done"
		developer.good = true
		expect(developer.lazy?).to eq(true)
	end

	it "is not lazy by default" do 
		expect(developer.lazy?).to eq(false)
	end


	it "has a name attribute" do
		developer.name = "Scott"
		expect(developer.name).to eq("Scott")

	end
	it "knows languages" do
		languages = ["c#","ruby","javascript"]
		developer.languages = languages
		expect(developer.languages.length).to eq(3)
		expect(developer.languages).to eq(languages)
	end

	it "has many programs"

end