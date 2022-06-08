def minimumDistances(a)
  i = 0
  distances = []
  while i < a.length
    if a.index(a[i]) != a.rindex(a[i])
      distances << a.rindex(a[i]) - a.index(a[i])
    end
    i += 1
  end
  if distances == []
    return -1
  end
  return distances.min
end

a = [7, 1, 3, 4, 1, 7]
p minimumDistances(a)


# # ====================
# 問題:
#   ペアとなる値が配列に存在する場合、それぞれのインデックスの差(距離)を返す。
#   複数ペアがある場合距離の短いペアの距離を返す。
#   ペアとなる値が一つも存在しない場合は-1を返す。

# 解説:
#   配列の最初からそれぞれの値のインデックスを取得し、それぞれ同じ値を配列の最後からのインデックスと比べる。
#   インデックスが一致しない場合(配列内に同じ値が2つある場合)のみそれぞれのインデックスの差をdistances配列に格納。
#   distances配列の値の最小値を返す。
#   distances配列が空の場合(a配列の値が全て違う値の場合)は-1を返す。

# # ====================
# Get each indexes of paired numbers in the given array.
# User .index and .rindex to get both of paired numbers indexes, subtract both indexes, shovel in the calculated value to the distances array.

# if the distance array is empty (if there is no matching pair in the given array),
# return -1
# Otherwise return smallest value in the distances array.
