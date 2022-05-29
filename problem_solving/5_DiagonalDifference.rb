arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

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

# ====================

# n * n マトリックスの左右斜めの合計の差を求める問題。
# （左上から右下）- (右上から左下) = 答え

# 配列の中に配列が入っているのでwhileループの中でインデックスを2つ使いそれぞれの必要な値を取得して合計値を取得。

# 右からの場合は中の配列のインデックスを後ろから取得している。

# ====================

# use two indexes ('i' and 'j') in the while loops to get specific values of arrays in arr

# set 'j' as index of end of array, decrease it in the loop to get right to left diagnonal sum.