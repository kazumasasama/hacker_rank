arr = [*(0..6)]

def findMedian(arr)
  return arr.sort[arr.length / 2]
end

p findMedian(arr) # => 3