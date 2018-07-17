require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @string = params[:user_text]
    @word_count = @string.split(' ').length
    @vowel_count = @string.scan(/[aeiou]/).count
    @consonant_count = @string.scan(/[bcdfghjklmnpqrstvwxyz]/).count

    letter_count = Hash.new 0
    @string.split('').each { |c| letter_count[c] += 1 }
    @most_used_letter = letter_count.max_by {|k,v| v }

    erb :results
  end
end
