def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr)
  arr.inject(0, :+)
end

def multiply(n1, n2)
  n1 * n2
end

def power(n1, n2)
  n1 ** n2
end

def factorial(n)
  (1..n).inject(1, :*)
end