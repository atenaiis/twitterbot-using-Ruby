require 'twitter'
require_relative '../lib/credentials.rb'
require_relative '../lib/work.rb'
require_relative '../lib/json_info.rb'
require_relative '../lib/twitter_scrip.rb'

client = Chocolate.new
bot = TwitterBot.new

loop do
  time = Time.new
  events_string_daily = JsonData.new('births', time.day, time.month)
  daily_tweet = Tweet.new(events_string_daily.json_hash)

  5.times do
    content = (1..290).to_a
    content = daily_tweet.tweet_content until content.length < 280
    bot.tweet(content)
    
  end
end