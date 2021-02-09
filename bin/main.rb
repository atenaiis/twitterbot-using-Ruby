require 'twitter'
require_relative '../lib/credentials'
require_relative '../lib/work'
require_relative '../lib/json_info'
require_relative '../lib/twitter_scrip'

Chocolate.new
bot = TwitterBot.new

loop do
  time = Time.new
  events_string_daily = JsonData.new('births', time.day, time.month)
  daily_tweet = Tweet.new(events_string_daily.json_hash)

  2.times do
    content = (1..290).to_a
    content = daily_tweet.tweet_content until content.length < 280
    bot.tweet(content)
    sleep(30)
  end
end
