s = [1, 2, 1, 3, 2]
d = 3
m = 2

def birthday(s, d, m)
  if m == 1 && s.length == 1 && d == s[0]
    count = 1
  elsif m == 1
    s.each do |n|
      if n == d
        count += 1
      end
    end
  elsif m > s.length
    count = 0
  else
    i = 0
    count = 0
    while (i + m) < s.length + 1
      if s[(i...i + m)].sum == d
        count += 1
      end
      i += 1
    end
  end
  return count
end

p birthday(s, d, m)

# # ====================
# # 問題:
#   1つのブロックの大きさが違うチョコレートを分配したい。
#   m個連続したブロックの大きさの合計がdになる場合の数を返す問題。

# # ポイント解説:
#   Line 20:
#     if s[(i...i + m)].sum == d

#       s配列のインデックスをレンジで指定し、その合計がdと同じか比較している
#       get ranged indices of values from s array then add up all the values to compare if it is equal to d value.
# # ====================