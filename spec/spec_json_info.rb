require_relative '../lib/json_info'

RSpec.describe JsonData do
  let!(:all) do
    @json_object = JsonData.new('events', 9, 2)
  end
  describe '#initialize' do
    it 'checks if date is equal to february 9' do
      expect(@json_object.json_hash['date']).to eq('February 9')
    end
    it 'it will be true if info in hash es equal to an array' do
      expect(@json_object.json_hash['events'].class).to eq(Array)
    end
  end
end
