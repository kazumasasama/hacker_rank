arr = [-4, 3, -9, 0, 4, 1]
def plusMinus(arr)
  pos = 0.0
  neg = 0.0
  zero = 0.0
  length = arr.length
  arr.each do |num|
    if num == 0
      zero += 1
    elsif num > 0
      pos += 1
    else
      neg += 1
    end
  end
  p (pos / length).to_f
  p (neg / length).to_f
  p (zero / length).to_f
end

plusMinus(arr)