# Your TextAnalyzer model code will go here.

class TextAnalyzer
  attr_reader :string

  def initialize(string)
    @string = string.downcase
  end

  def count_of_words
    @string.split(' ').length
  end

  def count_of_vowels
    @string.scan(/[aeiou]/).count
  end

  def count_of_consonants
    @string.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    letter_count = Hash.new 0
    @string.split('').each { |c| letter_count[c] += 1 }
    letter_count.max_by {|k,v| v }
  end

end
