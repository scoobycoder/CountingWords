class Counter

  def initialize(file)
    @file_contents = file_contents(file)
  end

  def word_list
    words = ""

    numbers_and_words = count_all_words

    word_array = []

    numbers_and_words.each_pair do |key, value|
      word_array << value
      word_array << key
    end

    while word_array.length > 0 do
      words += "#{word_array.pop} - #{word_array.pop}\n"
    end

    words
  end

  def count_all_words
    all_word_counts = {}

    @file_contents.each { |word| all_word_counts.merge! count(word) }
    all_word_counts.sort.to_h
  end

  private

  def count(word)
    word_hash = {}
    words = @file_contents.select { |w| w == word }
    word_hash.merge! ({words.count => word})
  end

  def file_contents(file_name)
    select_words(File.open file_name)
  end

  def select_words(opened_file)
    opened_file.read.split(' ')
  end

end