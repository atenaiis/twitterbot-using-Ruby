class Tweet
  def initialize(hash_info)
    @hash_info = hash_info
    @not_to_share_births = (0..@hash_info['births'].length - 1).to_a
  end

  def tweet_content
    content = 'Gess who else was born in a day like today but in '
    content += @hash_info['births'][rand(1..@not_to_share_births.length)]['year'].to_s
    content += ' well, it was...  '
    content += @hash_info['births'][rand(1..@not_to_share_births.length)]['description'].to_s
    content
  end
end
