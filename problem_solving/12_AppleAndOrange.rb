def countApplesAndOranges(s, t, a, b, apples, oranges)
  a_location = apples.map do |apple|
    apple + a
  end
  o_location = oranges.map do |orange|
    orange + b
  end
  p a_location.select{|num| num <= t && num >= s}.count
  p o_location.select{|num| num <= t && num >= s}.count
end