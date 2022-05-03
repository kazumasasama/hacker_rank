i = 20
j = 23
k = 6

def beautifulDays(i, j, k)
  days = [*(i..j)]
  beautiful = 0
  days.each do |day|
    reversed = day.to_s.reverse.to_i
    if (day - reversed) % k == 0
      beautiful += 1
    end
  end
  return beautiful
end

p beautifulDays(i, j, k)