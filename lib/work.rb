require 'twitter'
require 'dotenv'
Dotenv.load

loop do
  begin
   client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['CONSUMER_KEY']
    config.consumer_secret = ENV['CONSUMER_SECRET']
    config.access_token_key = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
   end

   client.search('#chocolate', result_type: 'recent').take(3).each do |tweet|
     client.update "#{tweet.user.screen_name}: #{tweet.text}:Hey I love chocolate too, what are your favorite blogs? "
     client.fav tweet
   end
 rescue 
   puts 'error occurred, waiting for 5 seconds'
   sleep 5
 end
end
