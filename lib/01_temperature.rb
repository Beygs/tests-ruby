# Convert Fahrenheit to Celsius

def ftoc(ftemp)
  ((ftemp - 32) / 1.8).ceil
end

# Convert Celsius to Fahrenheit

def ctof(ctemp)
  (ctemp * 1.8 + 32).floor(1)
end