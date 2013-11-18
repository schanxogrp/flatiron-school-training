# gem install rspec
RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

# TODO: Implement FizzBuzz - The Stairway to Heaven of Programmers

# Define the fizzbuzz method to do the following:
  # Use the modulo % method (divisible by)
    # 2 % 2 #=> 0
    # 1 % 2 #=> false

  # If a number is divisible by 3, return "Fizz".
  # If a number is divisible by 5, return "Buzz".
  # If a number is divisible by 3 and 5, return "FizzBuzz"

    # Use if statements
    # Use the && operator
def fizzbuzz(number)
  if(number % 15) == 0
    return "FizzBuzz"
  end 
  if(number % 3) == 0
    return "Fizz"
  end
  if(number % 5) == 0
    return "Buzz"
  end


end

describe "FizzBuzz" do
  it "returns Fizz when the number is divisible by 3" do
    result = fizzbuzz(6)
    expect(result).to eq("Fizz")
  end

  it "returns Buzz when the number is divisible by 5" do
    result = fizzbuzz(10)
    expect(result).to eq("Buzz")
  end

  it "returns FizzBuzz when the number is divisible by both 3 and 5" do
    result = fizzbuzz(45)
    expect(result).to eq("FizzBuzz")
  end
end
