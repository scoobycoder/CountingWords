class Counter

  def initialize(file)
    @file_contents = file_contents(file)
  end

  def count(word)
    count_word(word)
  end

  private
  def count_word(word)
    word_hash = {}
    words = @file_contents.select { |w| w == word }
    word_hash.merge! ({word.to_sym => words.count})
  end

  def file_contents(file_name)
    select_words(File.open file_name)
  end

  def select_words(opened_file)
    opened_file.read.split(' ')
  end

end