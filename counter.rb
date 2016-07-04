class Counter

  def initialize(file)
    @file_contents = file_contents(file)
  end

  def count(word)
    count_word(word)
  end

  def count_all_words
    all_word_counts = {}

    @file_contents.each {|word| all_word_counts.merge! count_word(word) }
    all_word_counts
  end

  private
  def count_word(word)
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