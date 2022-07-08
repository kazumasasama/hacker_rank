def sockMerchant(n, ar)
  count = 0
  grouped = ar.group_by(&:itself).map{|k, v| [k, v.count]}.to_h
  grouped.each_value do |v|
    count += (v / 2)
  end
  return count
end

n = 9
ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
p sockMerchant(n, ar)

# ====================
# 問題:
#   バラバラになったいくつかの種類の靴下を正しい組み合わせにしたい。
#   マッチングする靴下の組み合わせの数を返す。

# 条件:
#   n => 靴下の数（ペアリングされる前）
#   ar => n足ある靴下のそれぞれの種類

# ポイント解説:
#   Line 3:
#     grouped = ar.group_by(&:itself).map{|k, v| [k, v.count]}.to_h
#     ar.group_by(&:itself)
#       要素は同じ値毎にハッシュにグループ分けされる。
#       => {10=>[10, 10, 10, 10], 20=>[20, 20, 20], 30=>[30], 50=>[50]}

#     .map{|k, v| [k, v.count]}
#       できたハッシュのkeyとvalueのペアを配列にマップする。valueはvalue(配列)の要素数。
#       => [[10, 4], [20, 3], [30, 1], [50, 1]]

#     .to_h
#       できた配列をハッシュに変換する。
#       => {10=>4, 20=>3, 30=>1, 50=>1}

#   Line 4:
#     grouped.each_value do |v|
#       .each_valueを使ってハッシュの値が使えるループにする。
#       靴下をペアにしたい、二足必要なので2で割る。

# ====================
#   Line 3:
#   grouped = ar.group_by(&:itself).map{|k, v| [k, v.count]}.to_h
#   ar.group_by(&:itself)
#     Make hash of values of same valued elements.
#     => {10=>[10, 10, 10, 10], 20=>[20, 20, 20], 30=>[30], 50=>[50]}

#   .map{|k, v| [k, v.count]}
#     Create a new array, store pairs of hash keys and length of hash value (array)
#     => [[10, 4], [20, 3], [30, 1], [50, 1]]

#   .to_h
#     Convert the generated array to hash
#     => {10=>4, 20=>3, 30=>1, 50=>1}

#   Line 4:
#   grouped.each_value do |v|
#     Use .each_value to allow loop to use hash values.