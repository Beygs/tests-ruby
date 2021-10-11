def time_string(n)

  def time_layout(n)
    n.to_s.rjust(2, "0")
  end

  hours = time_layout(n % (60 * 60 * 60) / (60 * 60))
  minutes = time_layout(n % (60 * 60) / 60)
  seconds = time_layout(n % 60)

  "#{hours}:#{minutes}:#{seconds}"
end