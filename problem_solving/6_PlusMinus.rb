def plusMinus(arr)
  pos = 0
  neg = 0
  zero = 0
  arr.each do |num|
    if num == 0
      zero += 1
    elsif num < 0
      neg += 1
    elsif num > 0
      pos += 1
    end   
  end
  puts sprintf("%.6f", pos/arr.length.to_f)
  puts sprintf("%.6f", neg/arr.length.to_f)
  puts sprintf("%.6f", zero/arr.length.to_f)
end