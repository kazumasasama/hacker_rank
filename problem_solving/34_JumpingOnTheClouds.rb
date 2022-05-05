c = [0, 0, 0, 1, 0, 0]

def jumpingOnClouds(c)
  i =0
  count = 0
  while i < c.length
    if c[i + 2] == 1
      i += 1
      count += 1
    elsif i == c.length - 2 && c[i] == 0
      i += 1
      count += 1
    else
      i += 2
      count += 1
    end
  end
  return count - 1
end

p jumpingOnClouds(c)