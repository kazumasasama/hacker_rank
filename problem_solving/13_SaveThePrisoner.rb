def saveThePrisoner(n, m, s)
  if (m + s - 1) % n == 0
    return n
  else
    return (m + s - 1) % n
  end
end

n, m, s = 7, 19, 2
p saveThePrisoner(n, m, s)

# # ====================
# 問題:
#   円卓に人数分の椅子が並んでいて、それに一人ずつ座り順番に飴を配る。最後の飴はクソマズ仕様となっている。そのクソマズ飴を受け取る人が座っている椅子のインデックスを返す問題。

# 解説:
#   (m + s - 1) 飴の数と最初の椅子のインデックスを足す。インデックスの割り出しなので-1が必要。
#   できた数が人数で割り切れた場合は最後の椅子のインデックスを返す。
#   割り切れなかった場合は余りを返す。

# # ====================
#   add number of candy and beginning chair index. As dealing with index, subtract -1 from the value of m + s is necessary to find the index.

#   if the value is divisible by number of prisoners, that mean the last candy will go to the prisoner who sat on the last chair.
#   if the value is not divisible by number of prisoners, return remainder.