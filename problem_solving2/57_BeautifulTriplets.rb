def beautifulTriplets(d, arr)
  count = 0
  i = 0
  while i < arr.length
    if arr.include?(arr[i] + d) && arr.include?(arr[i] + d * 2)
      count += 1
    end
    i += 1
  end
  return count

  # return arr.select{|num| arr.include?(num + d) && arr.include?(num + (d * 2))}.length
end

d = 3
arr = [1, 2, 4, 5, 7, 8, 10]
p beautifulTriplets(d, arr)

# ====================
# 問題:
#   i < j < k
#   a[j] - a[i] = a[k] - a[j] = d
#   以上の条件に合致する[i, j, k]の組み合わせがいくつあるかを返す。

# 条件:
#   nは引数に渡されていませんが使用しなくても解答を得ることができるので無視してください。

#   n ->    arr配列の長さ
#   d ->    マッチする値
#   arr ->  小さい順にソートされた数値の配列

# ポイント解説:
#   Line 5: if arr.include?(arr[i] + d) && arr.include?(arr[i] + d * 2)
#     arr.include?(arr[i] + d)
#       -> (a[j] - a[i] = d) # の条件に合致する値があればtrue
#     arr.include?(arr[i] + d * 2)
#       -> (a[k] - a[j] = d) # の条件に合致する値があればtrue

#     # 両方ともtrueだった場合countに1足す

#     # arr[k]は (arr[i] + d * 2) で求めることができる。

#   Line 12:
#   return arr.select{|num| arr.include?(num + d) && arr.include?(num + (d * 2))}.length
#     一行で記述も可能です。
#     .selectで条件にマッチした値を抽出した配列を作成しその値の数を返す。

# ====================
#   Line 5: if arr.include?(arr[i] + d) && arr.include?(arr[i] + d * 2)
#   arr.include?(arr[i] + d)
#     -> (a[j] - a[i] = d) # true if matches
#   arr.include?(arr[i] + d * 2)
#     -> (a[k] - a[j] = d) # true if matches
#   # if both true, increase count valiable

#   # arr[k] could calculated by (arr[i] + d * 2)

#   Line 12:
#   return arr.select{|num| arr.include?(num + d) && arr.include?(num + (d * 2))}.length
#   # To make this code one-linner, use .slect to generate array contains matched values then return it's length.