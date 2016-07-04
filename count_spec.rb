require 'rspec'
require './counter'

describe 'Count Words' do

  before do
    @counter = Counter.new('./speech.txt')
  end

  it 'should return a count one 1 for "President"' do
    expect(@counter.count('President')).to eq({:President => 1})
  end

  it 'should count 11 for the word "that"' do
    expect(@counter.count('that')).to eq({:that => 11})
  end

end


