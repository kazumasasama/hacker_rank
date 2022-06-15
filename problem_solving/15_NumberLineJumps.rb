def kangaroo(x1, v1, x2, v2)
  if v1 <= v2
    return "NO"
  end 
  while x1 <= x2
    if x1 == x2
      return "YES"
    end
    x1 += v1
    x2 += v2
  end
  return "NO"
end

x1, v1, x2, v2 = 0, 2, 5, 3
p kangaroo(x1, v1, x2, v2)

# # ====================
# 問題:
#   二匹のカンガルーが一直線上に並び、それぞれのスタートポイントから同じ回数ジャンプし(カンガルー毎に飛距離が違う)、二匹のカンガルーが同じ地点に到達できる場合は "YES" を、追い越してしまった場合は "NO" を出力する。

# ポイント解説:
#   後ろから出発するカンガルーの飛距離が前にいるカンガルーの飛距離と同じか少ない場合は追いつくことができないので "NO"

#   ループ内でそれぞれの現在地に一回飛ぶ毎に飛距離をそれぞれ足していき、現在地が同じになった場合のみ "YES" を返す。

# # ==================== 
#   if jumping disctance of the first kangaroo is smaller than the second kangaroo's jumping distance, that means the first kangaroo will never reach to the other kangaroo. Return "NO" if this is the case.
  
#   In the while loop, add up jumping distance to the location until the first kangaroo's location is lower than the second kangaroo.
#   if the first kangaroo and the other kangaroo get to the same location, return "YES". Otherwise return "NO".
