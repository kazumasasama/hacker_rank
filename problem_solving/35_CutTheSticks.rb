# this code returns correct answer but Hackerrank doesn't like it.

arr = "5 4 4 2 2 8".split(" ").map{|length| length.to_i}

def cutTheSticks(arr)
  if arr.all?(arr[0])
    return arr.length
  end
  count = []
  while arr.length > 1
    shortest = arr.sort[0]
    count << arr.map{|length| length - shortest}.count
    arr = arr.map{|length| length - shortest}.delete_if{|length| length == 0}
    if arr.length == 2 && arr[0] == arr[1]
      count << arr.length
    end
  end
  count << arr.length
  p count
end

p cutTheSticks(arr)