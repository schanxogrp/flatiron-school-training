require_relative './jukebox'


RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

def capture_stdout(&block)
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    yield
  ensure
    $stdout = original_stdout
  end
  fake.string
end

songs = [
    "The Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "The Phoenix - Consolation Prizes"
  ]

describe "CLI Jukebox" do

  context "with commands" do
    it "responds to 'HELP'" do
      output = capture_stdout {show_help}
      output.should match(/I support help, play, exit and list/)
    end

    it "responds to 'LIST'" do
      output = capture_stdout { list(songs) }
      output.should match(/The Phoenix - 1901/)
    end

    # stub! is deprecated but the test doesnt work with
    # stub
    it "responds to 'PLAY'" do
      stub!(:gets).and_return("1")
      output = capture_stdout { play(songs) }
      output.should match(/The Phoenix - 1901/)
    end

    it "responds to 'EXIT'" do
      output = capture_stdout { do_exit }
      output.should match(/Goodbye!/)
    end
  end

  it "should start the script with the run method" do
    stub!(:gets).and_return("exit")
    output = capture_stdout { run }
    output.should match(/Please enter a command:/)
  end
end