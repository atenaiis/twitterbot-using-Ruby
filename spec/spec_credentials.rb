require_relative '../lib/credentials'

RSpec.describe TwitterBot do
  let!(:all) do
    @bot_test = TwitterBot.new
  end
  describe '#initialize' do
    it 'test if it initialice and gives a Twitter object' do
      expect(@bot_test.class).to eq(TwitterBot)
    end
    it 'checks if authentication is giving the correct object  ' do
      expect(@bot_test.client.class).to eq(Twitter::REST::Client)
    end
    it 'checks if authentication is giving the wrong object' do
      expect(@bot_test.client.class).to_not eq(TwitterBot)
    end
  end
end
