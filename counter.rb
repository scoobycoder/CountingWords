class Counter

  def count(word)
    count_word(word)
  end

  private
  def count_word(word)
    word_hash = {}
    words = file_contents.select { |w| w == word }
    word_hash.merge! ({word.to_sym => words.count})
  end

  def file_contents
    file = File.open './speech.txt'
    file.read.split(' ')
  end

end