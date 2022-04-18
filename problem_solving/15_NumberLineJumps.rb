def kangaroo(x1, v1, x2, v2)
  if v1 <= v2
    return "NO"
  end 
  while x1 <= x2
    if x1 == x2
      return "YES"
    end
    x1 += v1
    x2 += v2
  end
  return "NO"
end