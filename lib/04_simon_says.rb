def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times = 2)
  ("#{str} " * times).strip
end

def start_of_word(str, chars = 1)
  str[0..(chars - 1)]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  str.split.each_with_index.map{|w, i| i == 0 ? w.capitalize : w.length > 3 ? w.capitalize : w}.join(" ")
end