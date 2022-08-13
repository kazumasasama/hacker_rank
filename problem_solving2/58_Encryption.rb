def encryption(s)
  floor = Math.sqrt(s.length).floor
  ceil = Math.sqrt(s.length).ceil
  loop_times = 0
  string = s
  while string.length % floor != 0
    string += "*"
  end
  p string
  devided = string.split(//)
  i = 0
  j = ceil
  indices = []
  ceil.times do
    prev = i
    indices << i
    (floor - 1).times do
      indices << prev += j
    end
    i += 1
  end
  return indices.map{|index| devided[index]}.join().scan(/#{"." * floor}/).join(" ").delete("*")
end

s = "chillout"
p encryption(s)

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