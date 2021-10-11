def translate(str)
  str.split.map{|word|
    while word[0] =~ /[^aeio]/ do
      if word[0] != "u" || (word[0] == "u" && word[-1] == "q")
        word = word[1..-1] + word[0]
      end
    end
    word = word + "ay"
  }.join(" ")
end