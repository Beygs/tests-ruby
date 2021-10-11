# frozen_string_literal: true

def who_is_bigger(num_a, num_b, num_c)
  result = [num_a, num_b, num_c].index([num_a, num_b, num_c].max)

  case result
  when 0 then result = 'a'
  when 1 then result = 'b'
  when 2 then result = 'c'
  end

  "#{result} is bigger"
rescue StandardError => e # Si j'ai une erreur (mes variables ne sont pas des Integer)
  invalid_argument = e.message.match(/comparison of (Integer|\w+) with (\d+|\w+) failed/).to_a
  invalid_argument = invalid_argument[1] != 'Integer' ? invalid_argument[1] : invalid_argument[2]
  invalid_argument = 'nil' if invalid_argument == 'NilClass'

  "#{invalid_argument} detected"
end

def reverse_upcase_noLTA(str)
  str.reverse.upcase.gsub(/[LTA]/, '')
rescue StandardError
  "#{str} n'est pas un argument valide !"
end

def array_42(arr)
  arr.include?(42)
end

def magic_array(arr)
  arr.flatten.sort.map { |n| n * 2 }.reject { |n| (n % 3).zero? }.uniq
end
