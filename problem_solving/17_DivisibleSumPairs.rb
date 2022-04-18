def divisibleSumPairs(n, k, ar)
  i = 0
  j = 1
  count = 0
  while i < n - 1
    while j < n
      if (ar[i] + ar[j]) % k == 0
        count += 1
      end
      j += 1
    end
    i += 1
    j = i + 1
  end
  return count
end

ar = [*(1..6)]
k = 5
n = ar.length

p divisibleSumPairs(n, k, ar)