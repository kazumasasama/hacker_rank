def insertionSort1(n, arr)
  last_value = arr[-1]
  i = -2
  while i.abs <= n
    if arr[i] > last_value
      arr[i + 1] = arr[i]
    else
      arr[i + 1] = last_value
      break
    end
    puts arr.join(' ')
    i -= 1
  end
  if arr[0] > last_value
    arr[0] = last_value
  end
  puts arr.join(' ')
end

n = 10
arr = "2 3 4 5 6 7 8 9 10 1".split(' ').map{|num| num.to_i}
insertionSort1(n, arr)


# ====================
# 問題:
#   arr配列を挿入ソートで並び替えをする問題。
#   配列の最後の値以外は順番に並んでいるので、配列の最後の値を正しいインデックスに挿入する。

#  .sortを使えば一行で処理できますが使わないでください。
#  ソートのアルゴリズムを理解する事で言語に対する理解を深めることがこの問題の趣旨となっています。

# 条件:
#   n ->    arr配列の長さ  
#   arr ->  n個の整数が入った配列

# ポイント解説:
#   while i.abs <= n # iは負の数になるので.absを使い絶対値で比較
#     if arr[i] > last_value # 配列の最後の値より大きい時
#       arr[i + 1] = arr[i] # 一つ後ろの値を一つ前の値で上書きする
#     else
#       arr[i + 1] = last_value
#       break #これ以降はソートされているので処理を止める
#     end
#     puts arr.join(' ') # arrをpでそのまま出力するとエラーになるので文字列として出力する
#     i -= 1
#   end

#   if arr[0] > last_value # 配列の最初の値が配列の最後の値より大きい時
#     arr[0] = last_value
#   end

# 参考:
#   挿入ソート
#   https://ja.wikipedia.org/wiki/%E6%8C%BF%E5%85%A5%E3%82%BD%E3%83%BC%E3%83%88

# ====================
#   while i.abs <= n # i is negative number. Use .abs to use i as absolute number.
#     if arr[i] > last_value # When arr[-1] value is bigger than the value comparing
#       arr[i + 1] = arr[i] # 
#     else
#       arr[i + 1] = last_value
#       break # Lower index values are sorted. Stop the loop.
#     end
#     puts arr.join(' ') # To prevent output error, print each values of the arr separated with a space as a string.
#     i -= 1
#   end

#   if arr[0] > last_value # When the last value of the arr is smaller than the first value of the arr
#     arr[0] = last_value
#   end