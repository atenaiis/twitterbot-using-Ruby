require 'twitter'
require 'dotenv'
Dotenv.load
class Chocolate

  client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['CONSUMER_KEY']
    config.consumer_secret = ENV['CONSUMER_SECRET']
    config.access_token = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end
  5.times do
  client.search('#chocolate', result_type: 'recent').take(5).each do |tweet|
    client.update "#{tweet.user.screen_name}: #{tweet.text}:Hey I love chocolate too, what are your favorite blogs? "
end
end
end