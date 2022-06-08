def countApplesAndOranges(s, t, a, b, apples, oranges)
  a_location = apples.map{|apple| apple + a}
  o_location = oranges.map{|orange| orange + b}
  p a_location.select{|num| num <= t && num >= s}.count
  p o_location.select{|num| num <= t && num >= s}.count
end

s = 7
t = 11
a = 5
b = 15
apples = [-2, 2, 1]
oranges = [5, -6]
countApplesAndOranges(s, t, a, b, apples, oranges)

# # ====================
#   a => りんごの木の場所
#   b => オレンジの木の場所
#   s から t => この範囲に落ちたりんごとオレンジの数をそれぞれ返す

# apples配列の値は移動した距離なので、それぞれの値にaを足して現在地を取得しa_locationに代入する。オレンジも同様に処理する。
# a_location配列の値の中からsとtの範囲内にあるりんごのみを新しい配列として抽出し、.countで配列の中身の数を返す。
# オレンジも同様。

# appleもorangeも.selectから繋げてワンライナーで書けますが、読みやすさを重視しました。

# # ====================
# As apples array contains distances for each apples fell from tyhe tree,
# add apple tree location to each distances.
# Do the same for oranges.

# Select apples that is on the location s or t, and between s and t, count how many values in the new array generated with .select method.
# Do the same for oranges.
