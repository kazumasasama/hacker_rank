def serviceLane(n, cases, width)
  return cases.map{|c| width[c[0]..c[1]].min}
end

n = 8
width = [2, 3, 1, 2, 3, 2, 3, 3]
cases = [[0, 3], [4, 6], [6, 7], [3, 5], [0, 7]]
p serviceLane(n, cases, width)


# # ====================
# はじめに...
#   widthがserviceLane()に与えられていないので、serviceLane()の下に記述してある以下の部分を修正し、widthを第三引数として受け取れるようにする。

#   誤 result = serviceLane n, cases
#   正 result = serviceLane n, cases, width

#   他の方も言っているようにこの問題は説明文も滅茶苦茶なのであまり気にしないで進めてください。

# 問題:
#   かなり要約して説明します。
#   widthで指定された幅のサービスレーンがあります。そのサービスレーンに入ることができる乗り物の最大幅を求める。

# 解説:
#   cases内の各配列にはwidthのインデックスが二つ入っているので、その範囲のwidthの中から最小値を求めれば答えが出る。

#   ポイントはwidth[c[0]..c[1]]で指定範囲のwidthを取得して、できた配列から.minで最小値を取得している。

# # ====================
# A paired indices are stored in cases array as each inner array.
# Use those indices to get width of the service lane.

# Give width[c[0]..c[1]] range to .map to create a new array that store minimum width from the ranged width.