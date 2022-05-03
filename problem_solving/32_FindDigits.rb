n = 123456789

def findDigits(n)
  n_array = n.to_s.split(//).map{|num| num.to_i}
  count = 0
  n_array.each do |num|
    if num == 0
    elsif n % num == 0
      count += 1
    end
  end
  return count
end

p findDigits(n)