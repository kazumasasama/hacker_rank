def encryption(s)
  floor = Math.sqrt(s.length).floor
  ceil = Math.sqrt(s.length).ceil
  if floor * ceil < s.length
    floor += 1
  end
  string = s
  while string.length % floor != 0
    string += "*"
  end
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


s = "haveaniceday"
p encryption(s)

# ====================
# 問題:
#   与えられた英文を暗号化する。
#   暗号化の手順は以下。

#   1.  英文からはスペースが取り除かれている

#   2.  その英文の文字数の平方根(何の2乗なのか)を求める。
#       整数でない平方根が得られる場合、四捨五入した数xと繰り上げた数yを求める。
#       整数の場合は x = y とする。x * y > s.length の条件を満たさない場合は x + 1。

#   3.  xを行、yを一行の最大文字数とする。最後の行は余りの文字なので文字数はyでなくても良い。

#   4.  生成されたものを縦読みし、一行縦読みする毎にスペースを入れる。

#   5.  完了!


# 条件:
#   引数で渡されてくる文字列にはスペースが入っていると説明文に記載がありますが、実際には入っていません。

#   s -> 小文字のアルファベットのみの文字列。記号やその他の文字は入っていない。

# ポイント解説:
#   今回は文字列を一文字ずつ分解し、どのように組み替えるのかに焦点を当てました。
#   インデックスを配列に生成し、そのインデックスを元に文字を組み替えました。

#   Line 2:
#     floor = Math.sqrt(s.length).floor
#       平方根を求める方法はいくつかありますが、rubyにはビルトインメソッドがあるのでそれを利用しました。
#       Math.sqrt()はdecimalが返ってくるのでfloorやceilを使って整数にしています。

#   Line 24:
#     return indices.map{|index| devided[index]}.join().scan(/#{"." * floor}/).join(" ").delete("*")
#       記号は使われないという条件を利用し、.scan()で均等に分配するためにLine10で"*"を必要分追加しています。
#       この行で"*"を排除しているのはそのためです。

#   少しブルートフォースなコードになっているかもしれません。
#   より良い書き方がありましたらぜひ教えていただけると嬉しいです！
# ====================

# Line 2:
# floor = Math.sqrt(s.length).floor
#   Use Math.sqrt() to get square root.
#   When square root is not an integer, this builtin method returns decimal.

# Line 24:
# return indices.map{|index| devided[index]}.join().scan(/#{"." * floor}/).join(" ").delete("*")
#   The string s is only contains lowercase alphabets so you can use "*" to adjust the length to use .scan() to distribute the reordered string.

# This solution might be brute force.
# Let me know if you have better solution.
# I always love to learn!