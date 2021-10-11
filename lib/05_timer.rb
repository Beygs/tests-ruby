# frozen_string_literal: true

def time_string(num)
  time_layout = ->(time) { time.to_s.rjust(2, '0') } # Mets mes chiffres en forme

  hours = time_layout.call(num % (60 * 60 * 60) / (60 * 60))
  minutes = time_layout.call(num % (60 * 60) / 60)
  seconds = time_layout.call(num % 60)

  "#{hours}:#{minutes}:#{seconds}"
end
