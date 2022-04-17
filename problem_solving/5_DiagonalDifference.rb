def diagonalDifference(arr)
  i = 0
  j = 0
  ltor = 0
  while i < arr.length
    ltor += arr[i][j]
    i += 1
    j += 1
  end
  i = 0
  j = arr.length - 1
  rtol = 0
  while i < arr.length
    rtol += arr[i][j]
    i += 1
    j -= 1
  end
  if ltor < rtol
    return rtol - ltor
  end
  return ltor - rtol
end