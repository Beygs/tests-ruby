# frozen_string_literal: true

# Convert Fahrenheit to Celsius

def ftoc(ftemp)
  ((ftemp - 32) / 1.8).ceil # ceil sert à arrondir à l'entier supérieur
end

# Convert Celsius to Fahrenheit

def ctof(ctemp)
  (ctemp * 1.8 + 32).floor(1) # floor sert à arrondir au dixième inférieur
end
