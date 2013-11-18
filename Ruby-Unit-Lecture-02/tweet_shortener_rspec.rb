RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

#TODO: implement tweet shortener according to the specs below

# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"
# tweets over 140 characters should be truncated to 140
# tweets under 140 characters should not be altered
def tweet_shortener(tweet)
	keys = /\b(to|too|two|for|four|For|be|you|at|and)(?i)\b/
	twitter_dict = {
		"to" => "2",
		"too" => "2",
		"two" => "2",
		"for" => "4",
		"For" => "4",
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}	
	if tweet.size > 140
		shortened_tweet = tweet.gsub(keys,twitter_dict).slice(0,140)
		return shortened_tweet
	else
		return tweet
	end

	#if shortened_tweet.size > 140
	#	more_tweet = shortened_tweet.slice!(0,140)
	#	return more_tweet
	#end

	#twitter_dictionary.each do |key,value|
	#	shortened_tweet.gsub!(/key(,|.)/,value)
	#end

end

# The two Rspec specs below should pass when finished.

tweets = [
"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
"I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys."
]

replaced_tweets = [
"Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!",
"I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys."
]

describe "tweet_shortener" do
	it "replaces words on long tweets" do
		tweets.each_with_index do |tweet, i|
			expect(tweet_shortener(tweet)).to eq(replaced_tweets[i])
		end
	end

	it "truncates tweets over 140 characters after replacement" do
		long_tweet = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? Spencer is looking at me right now as if I stole his cat. Glad this part won't make it to Twitter."
		truncated = "GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, so s"

		expect(tweet_shortener(long_tweet)).to eq(truncated)
	end

	it "doesn't replace on short tweets" do
		short_tweet = "to be or not to be, right?"
		expect(tweet_shortener(short_tweet)).to eq(short_tweet)
	end
end