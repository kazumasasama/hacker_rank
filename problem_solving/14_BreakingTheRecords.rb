def breakingRecords(scores)
  high = 0
  low = 0
  high_low = {highest: scores[0], lowest: scores[0]}
  scores.each do |score|
    if high_low[:highest] < score
      high_low[:highest] = score
      high += 1
    end
    if high_low[:lowest] > score
      high_low[:lowest] = score
      low += 1
    end
  end 
  return high, low
end

scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
p breakingRecords(scores)

# # ====================
# 問題:
#   ゲームのスコアを記録した配列を最初から順番に比較していく。
#   今までのスコアと比べて最高得点だった場合の最高得点記録更新回数をカウントする。
#   今までのスコアと比べて最低得点だった場合の最低得点記録更新回数をカウントする。
#   上記二つの数を返す問題。

# ポイント解説:
#   ハッシュには初期値としてscores配列の最初の値を代入する。配列を使うとインデックスが必要になるのでハッシュの方が書きやすい。
#   ループ内でscores配列の全ての値を以下のように処理する。
#     得点がハッシュのhighestに格納された値よりも高得点だった場合highestの値を更新。
#     得点がハッシュのlowestに格納された値よりも低得点だった場合lowestの値を更新。

# # ====================
# Hash is easier to deal in this problem as array would need to use with indices.

# # ====================

# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem