# Your TextAnalyzer model code will go here.

class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    text.split(' ').length
  end

  def count_of_vowels
    text.scan(/[aeiou]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    letter_count = Hash.new 0
    clean = text.gsub(/[^a-z]/, '')
    clean.split('').each { |c| letter_count[c] += 1 }
    letter_count.max_by {|k,v| v }
  end

end
