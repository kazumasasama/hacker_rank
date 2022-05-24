s = "07:05:45PM"

def timeConversion(s)
  if s.end_with?("AM")
    if s.start_with?("12")
      splitted = s.delete("AM").split(":")
      splitted[0] = "00"
      return splitted.join(":")
    end
    return s.delete("AM")
  else
    if s.start_with?("12")
      return s.delete("PM")
    else
      splitted = s.delete("PM").split(":")
      splitted[0] = splitted[0].to_i + 12
      return splitted.join(":")
    end
  end
end

p timeConversion(s)