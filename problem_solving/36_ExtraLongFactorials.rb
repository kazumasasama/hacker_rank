n = 25

def extraLongFactorials(n)
  result = n
  (n - 1).times do
    result = result * (n - 1)
    n -= 1
  end
  return result
end

p extraLongFactorials(n)