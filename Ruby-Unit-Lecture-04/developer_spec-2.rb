require_relative './spec_helper'

describe Developer do

  let(:developer) { Developer.new } 

  it "is lazy if good" do
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
    langs = ["c#", "ruby", "javascript"]
    developer.languages = langs
    expect(developer.languages.length).to eq(3)
    expect(developer.languages).to eq(langs)
  end

  it "has many programs" do
    developer.programs = [Program.new, Program.new]
    expect(developer.programs.length).to eq(2)
    expect(developer.programs.all?{|prog| prog.is_a?(Program)}).to eq(true)
  end
end
