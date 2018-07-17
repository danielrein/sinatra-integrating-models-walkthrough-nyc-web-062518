# Your TextAnalyzer model code will go here.

class TextAnalyzer
  attr_reader :text

def initialize(text)
  @text = text
end
@string = params[:user_text]
@word_count = @string.split(' ').length
@vowel_count = @string.scan(/[aeiou]/).count
@consonant_count = @string.scan(/[bcdfghjklmnpqrstvwxyz]/).count

letter_count = Hash.new 0
@string.split('').each { |c| letter_count[c] += 1 }
@most_used_letter = letter_count.max_by {|k,v| v }

end
