require 'rspec'

describe 'Count Words' do

  it 'open file' do
    expect(file_open.is_a? File).to eq(true)
  end
end

private
def file_open
  File.open './speech.txt'
end
