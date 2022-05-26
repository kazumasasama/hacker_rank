arr = [1, 2, 3, 1, 2, 3, 3, 3]

def equalizeArray(arr)
  hash = {}
  i = 0
  arr.each do |num|
    if hash[arr[i]]
      hash[arr[i]] += 1
    else
      hash[arr[i]] = 1
    end
    i += 1
  end
  most_frequent = hash.max{|x, y| x[1] <=> y[1] }
  arr.delete(most_frequent[0])
  return arr.length
end

p equalizeArray(arr)