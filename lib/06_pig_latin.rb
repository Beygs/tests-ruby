# frozen_string_literal: true

def translate(str)
  str.split.map do |word|
    word = word[1..-1] + word[0] if word[0] != 'u' || (word[0] == 'u' && word[-1] == 'q') while word[0] =~ /[^aeio]/
    "#{word}ay"
  end.join(' ')
end
