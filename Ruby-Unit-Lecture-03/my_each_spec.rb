# Read about the yield keyword and ruby blocks.

# http://allaboutruby.wordpress.com/2006/01/20/ruby-blocks-101/
# http://ruby.about.com/od/beginningruby/a/Block-Parameters-And-Yielding.htm
# http://blog.codahale.com/2005/11/24/a-ruby-howto-writing-a-method-that-uses-code-blocks/
# http://www.robertsosinski.com/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/

# Now that you know how the yield method works, try to write your
# own version of the each method without using the each method
# provided by ruby. As in, try to build my_each using only the
# while keyword.

# Think about what's going on in each, if it's looping through
# the elements of an array and yielding you the individual
# element one at a time to your block. What has to happen
# to do this?

# Note: All ruby methods accept blocks by default.
# Complete the "my_each" method.

def my_each
end

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

describe "my_each" do
  it "should let us iterate over a collection of objects and do stuff" do
    students = [
      { name: 'Rachael' },
      { name: 'Josephina'},
      { name: 'Benedict'}
    ]

    my_each(students) do |student|
      student[:enrolled] = true
    end

    students[0][:enrolled].should == true
    students[1][:enrolled].should == true
    students[2][:enrolled].should == true
  end

  it "should return the original collection" do
    array = %w(foo bar baz qux)

    my_each(array) do |word|
      word.upcase
    end.should == %w(foo bar baz qux)
  end

  it "should not execute the block given an empty collection" do
    o = Object.new
    o.should_not_receive(:methods)

    my_each([]) do |n|
      o.methods
    end
  end
end
