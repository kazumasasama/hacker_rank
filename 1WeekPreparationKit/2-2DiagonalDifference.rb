arr = [
  [11, 2, 4],
  [4, 5, 6],
  [10, 8, -12]
]

# def diagonalDifference(arr)
#   i = 0
#   l_r = arr[0][0] + arr[1][1] + arr[2][2]
#   r_l = arr[0][2] + arr[1][1] + arr[2][0]
#   diff = l_r - r_l
#   if diff < 0
#     return diff - (diff * 2)
#   end
#   return diff
# end

def diagonalDifference(arr)
  i = 0
  j = 0
  k = arr[i].length - 1
  l_r = 0
  r_l = 0
  while i < arr.length
    l_r += arr[i][j]
    r_l += arr[i][k]
    j += 1
    k -= 1
    i += 1
  end
  diff = l_r - r_l
  if diff < 0
    return diff - (diff * 2)
  end
  return diff
end

p diagonalDifference(arr)