require 'twitter'


loop do
  begin
   client = Twitter::REST::Client.new do |config|
    config.consumer_key        =  "xXG6cIycqpZauOTPutodCC3fw"
    config.consumer_secret     = "im7i6GcqxvLAQhKKVXEoeLUWut9TdG0ZSVYzl39k5wqql3C61O"
    config.access_token        = "744842330050465793-vltnR6Jp9T4dHvrourG2mNsRY0C8yEH"
    config.access_token_secret = "4V3LFjBj98qDHTpxWel3hIvb9XxRHoU6Vu7i2MFyqwXva"
   end

   client.search('#chocolate', result_type: 'recent').take(5).each do |tweet|
     client.update "#{tweet.user.screen_name}: #{tweet.text}:Hey I love chocolate too, what are your favorite blogs? "
     client.fav tweet
   end
 rescue 
   puts 'error occurred, waiting for 5 seconds'
   sleep 5
 end
end
