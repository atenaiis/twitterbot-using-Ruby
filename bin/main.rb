require'twitter'
require 'work'
       
        client.search('#chocolate', result_type: "recent").take(3).each do |tweet|
        client.update  ("#{tweet.user.screen_name}: #{tweet.text}:Hey I love chocolate too, what are your favorite blogs? ")
      client.fav tweet    
      end

     rescue
          puts 'error occurred, waiting for 5 seconds'
          sleep 5
       end
     end
    end