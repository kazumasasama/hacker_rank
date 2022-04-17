def miniMaxSum(arr)
  arr = arr.sort
  min = 0
  max = 0
  i = 0
  while i < 4
    min += arr[i]
    i += 1
  end
  while i > 0
    max += arr[i]
    i -= 1
  end
  puts "#{min} #{max}"
end