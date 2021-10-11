# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  # inject me permet d'additionner tous les éléments du tableau, le premier argument est la valeur par défaut
  arr.inject(0, :+)
end

def multiply(num1, num2)
  num1 * num2
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  (1..num).inject(1, :*)
end
