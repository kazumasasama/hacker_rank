def serial_average(width)
  width = width.split("-")
  width[1] = ((width[1].to_f + width[2].to_f) / 2).round(2)
  return "#{width[0]}-#{width[1]}"
end