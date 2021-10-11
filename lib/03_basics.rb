def who_is_bigger(a, b, c)
  begin

    result = [a, b, c].index([a, b, c].max)

    return "#{result == 0 ? "a" : result == 1 ? "b" : "c"} is bigger"

  rescue => e

    invalidArgument = e.message.match(/comparison of (Integer|\w+) with (\d+|\w+) failed/).to_a
    invalidArgument = invalidArgument[1] != "Integer" ? invalidArgument[1] : invalidArgument[2]
    if invalidArgument == "NilClass" then invalidArgument = "nil" end

    return "#{invalidArgument} detected"

  end
end

def reverse_upcase_noLTA(str)
  begin
    str.reverse.upcase.gsub(/[LTA]/, "")
  rescue
    "#{str} n'est pas un argument valide !"
  end
end

def array_42(arr)
  arr.include?(42)
end

def magic_array(a)
  a.flatten.sort.map{|n|n*2}.select{|n|n%3!=0}.uniq # 49 caractères !
end