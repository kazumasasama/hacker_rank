x, y, z = 1, 3, 2

def catAndMouse(x, y, z)
  if (z - x).abs == (z - y).abs
    return "Mouse C"
  end
  max = [x, y, z].max
  min = [x, y, z].min
  if max == z
    if x > y
      return "Cat A"
    elsif x < y
      return "Cat B"
    end
  elsif min == z
    if x < y
      return "Cat A"
    elsif x > y
      return "Cat B"
    end
  elsif (z - x).abs < (z - y).abs
    return "Cat A"
  else
    return "Cat B"
  end
end

p catAndMouse(x, y, z)