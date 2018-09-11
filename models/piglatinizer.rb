require 'pry'
class PigLatinizer

  attr_accessor :text, :pigtext, :words, :letters_to_remove, :rest_of_word, :start

  @@vowels = ["a", "e", "i", "o", "u"]
  def pig_latinize(text)
    @text = text
    @pigtext = []
    @words = @text.split(" ")
    @words.each do |word|
      if @@vowels.include?(word[0])
        @pigtext << "#{word}way"
     else
        letters = word.split('')
        letters.each do |l|
          @start = []
          until @@vowels.include?(l)
            @start << l
          end
        end
        @letters_to_remove = start.count
        @rest_of_word = word[letters_to_remove..-1]
        end
      end
  end
end

a = PigLatinizer.new
binding.pry
