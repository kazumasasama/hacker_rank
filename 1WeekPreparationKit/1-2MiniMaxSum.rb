arr = [1, 2, 3, 4, 5]

def miniMaxSum(arr)
  arr = arr.sort
  puts "#{arr.sum - arr[-1]} #{arr.sum - arr[0]}"
end

miniMaxSum(arr)