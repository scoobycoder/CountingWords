require 'rspec'
require './counter'

describe 'Count Words' do

  before do
    @counter = Counter.new('./speech.txt')
  end

  it 'should return word with highest number of instances' do
    all_word_counts = @counter.count_all_words.sort.to_h
    expect(all_word_counts[11]).to eq('our')
  end

end


