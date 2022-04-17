def compareTriplets(a, b)
  alice = 0
  bob = 0
  result = []
  i = 0
  while i < a.length
      if a[i] < b[i]
        bob += 1
      elsif a[i] > b[i]
        alice += 1
      end
      i += 1
  end
  result << alice
  result << bob
  return result
end