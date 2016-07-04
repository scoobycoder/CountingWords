class Counter

  def initialize(file)
    @file_contents = file_contents(file)
  end

  def list_words
    word_array = []

    order_words(word_array)
    create_list_of_words(word_array)
  end

  private

  def order_words(word_array)
    count_all_words.each_pair do |key, value|
      word_array << value
      word_array << key
    end
  end

  def create_list_of_words(word_array)
    words = ""
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

  def count(word)
    word_hash = {}
    words = @file_contents.select { |w| w == word }
    word_hash.merge! ({words.count => word})
  end

  def file_contents(file_name)
    select_words(File.open file_name)
  end

  def select_words(opened_file)
    file = opened_file.read

    replace_special_characters(file)

    file.split(' ')
  end

  def replace_special_characters(file)
    replace_character = ['.', '_', '+', '{', '', '}', '"', '?', '>',
                         '<', ',', '-']

    replace_character.each do |character|
      file.gsub!(character, '')
    end
  end

end