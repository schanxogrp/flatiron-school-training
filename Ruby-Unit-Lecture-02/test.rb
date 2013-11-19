require 'rubygems'
require 'httparty'

class Representative
  include HTTParty
end


response = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
puts response