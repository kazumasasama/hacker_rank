def countingValleys(steps, path)
  pathes = path.split(//)
  position = 0
  valley = 0
  pathes.each do |path|
    if path == "U"
      if position == -1
        valley += 1
      end
      position += 1
    elsif path == "D"
      position -= 1
    end
  end
  return valley
end

steps = 8
path = "UDDDUDUU"
p countingValleys(steps, path) # => 1

# ====================
# 問題:
#   ハイキングで歩いたルートの登り坂(uphill)と下り坂(downhill)を記録した。
#   スタート地点は高度0で、ゴール地点も高度0になる。つまりスタートとゴールの高度はいつも同じ。
#   高度が1変化する毎にuphillならU、downhillならDと記録する。
#   山は海面より高く、Uで始まりDで終わり、かつ高度0で終わる。
#   谷は海面より低く、Dで始まりUで終わり、かつ高度0で終わる。
#   記録したpathから谷が何箇所あるか返す問題。

# 条件:
#   steps (integer) -> pathの長さ
#   path (string)   -> 登り坂(uphill)と下り坂(downhill)の記録

# ポイント解説:
#   どういうシチュエーションの時に谷を通過するのかを考える。

#   pathes.each do |path|
#     if path == "U" # 通るパスがuphill
#       if position == -1 # 既に海面下-1にいて、そこからuphillする場合 = 谷を通過した
#         valley += 1
#       end
#       position += 1 # uphillなので1加算
#     elsif path == "D" # 通るパスがdownhill
#       position -= 1 # downhillなので1減算
#     end
#   end
# ====================
# Think what is the situation when you are going to pass through valleys.

#   pathes.each do |path|
#     if path == "U" # when upcoming pass is uphill
#       if position == -1 # you are at under the sea level and you are going up
#         valley += 1
#       end
#       position += 1 # you are going up = increase position by 1
#     elsif path == "D" # when upcoming pass is downhill
#       position -= 1 # you are going down = decrease position by 1
#     end
#   end