RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

# ======================================
# Start Here - Make these tests pass.
# ======================================

# Define a method named is_a_vowel? that takes one
# argument and returns true or false depending on
# whether the argument is a vowel.
def is_a_vowel?(letter)
  if letter.match(/a|e|i|o|u/)
    true
  else
    false
  end
end


# TODO: Method definition goes here:

# you can use == to compare a string to another string
# and check for equality.

describe "is_a_vowel?" do
  it "knows what are vowels" do
    is_a_vowel?("a").should eq(true)
    is_a_vowel?("e").should eq(true)
    is_a_vowel?("i").should eq(true)
    is_a_vowel?("o").should eq(true)
    is_a_vowel?("u").should eq(true)
    is_a_vowel?("x").should eq(false)
    is_a_vowel?("b").should eq(false)
  end
end
