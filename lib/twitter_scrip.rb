class Tweet
    def initialize(hash_info)
      @hash_info = hash_info
      @not_to_share_births = (0..@hash_info['births'].length - 1).to_a
    end
    
    def tweet_content
      event_index = random_event_idx
      content = 'Gess who else was born in a day like today but in '
      content += @hash_info['births'][event_index]['year'].to_s
      content += ' well, it was...  '
      content += @hash_info['births'][event_index]['description'].to_s
      content
    end
  
    private
  
    def random_event_idx
      not_shared_births = rand(1..@not_to_share_births.length)
    end
  end