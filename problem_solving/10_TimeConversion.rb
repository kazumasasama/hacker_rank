def timeConversion(s)
  if s.end_with?("PM")
    s.delete("PM")
    time = s.split(":")
    i = 0
    while i < time.length
      time[i] = time[i].to_i
      if time[i] < 10
        time[i] = "0" + time[i].to_s
      end
      i += 1
    end
    if time[0].to_i < 12
      time[0] = time[0].to_i + 12
    end
    p "#{time[0]}:#{time[1]}:#{time[2]}"
  elsif s.end_with?("AM")
    s.delete("AM")
    time = s.split(":")
    i = 0
    while i < time.length
      time[i] = time[i].to_i
      if time[i] < 10
        time[i] = "0" + time[i].to_s
      end
      i += 1
    end
    if time[0].to_i == 12
      time[0] = "00"
    end
    p "#{time[0]}:#{time[1]}:#{time[2]}"
  end
end