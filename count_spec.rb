require 'rspec'
require './counter'

describe 'Count Words' do

  before do
    @counter = Counter.new('./speech.txt')
  end

  it 'should list all words in order of occurance descending' do
    expect(@counter.word_list).to eq(word_list)
  end

end

def word_list
  %{36 - of
32 - the
26 - to
21 - I
19 - and
16 - a
13 - in
11 - our
10 - their
8 - this
7 - it
6 - with
5 - on
4 - own
3 - doubt
2 - his
1 - Franklin
}
end


