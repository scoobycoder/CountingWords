require 'rspec'
require './counter'

describe 'Count Words' do

  before do
    @counter = Counter.new('./speech.txt')
  end

  it 'should return a count one 1 for "President"' do
    expect(@counter.count('President')).to eq({1 => 'President'})
  end

  it 'should count 11 for the word "that"' do
    expect(@counter.count('that')).to eq({11 => 'that'})
  end

  it 'should return word with highest number of instances' do
    all_word_counts = @counter.count_all_words.sort.to_h
    expect(all_word_counts[11]).to eq('our')
  end

end


