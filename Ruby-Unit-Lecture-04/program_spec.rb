require_relative './spec_helper'

#in a spec, the only line that is required is require './spec_helper'

describe Program do

	let(:program) { Program.new }

	it "belongs to developer" do
		program.developer = Developer.new.tap { |dev| dev.name = "scott" }
		expect(program.developer.name).to eq("scott")
	end

	it "can be executed" do
		expect(program.executable?).to eq(true)
	end

	it "has a name" do
		program.name = "this thing"
		expect(program.name).to eq("this thing")
	end
	it "has lines of code" do
		program.lines_of_code = 320
		expect(program.lines_of_code).to eq(320)
	end

	context "class methods" do
		it "keeps track of how many programs there are" do
			Program.reset_all
			5.times do 
				Program.new
			end
			expect(Program.all.count).to eq(5)
		end

	end


end