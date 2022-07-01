# まだ途中
# won't get correct result. still working...

# def getTotalX(a, b)
#   a = a.sort
#   b = b.sort
#   divisors = {}
#   divisor = 2
#   b.each do |num|
#     while divisor <= num
#       if num % divisor == 0
#         if divisors[divisor]
#           divisors[divisor] += 1
#         else
#           divisors[divisor] = 1
#         end
#       end
#       divisor += 1
#     end
#     divisor = 2
#   end
#   p divisors = divisors.select{|k, v| v == divisors.max{|a, b| a[1] <=> b[1]}[1]}

#   products = {}
#   product = 0
#   a.each do |num|
#     while product <= b[-1]
#       product = num * num
#       if products[product]
#         products[product] += 1
#       else
#         products[product] = 1
#       end
#     end
#   end

#   result = []
#   products.each do |product|
#     if !divisors[product]
#     else
#       result << product
#     end
#   end
#   return result.length
# end

def getTotalX(a, b)
  i = 0
  array = [*(1..100)]
  boolean = array.map do |num|
    a.each do |n|
      if num % n == 0
        return num
      end
    end
  end
  return boolean
end



a = [3, 9, 6]
b = [36, 72]
p getTotalX(a, b)

# ====================
#   a => りんごの木の場所
#   b => オレンジの木の場所
#   s から t => この範囲に落ちたりんごとオレンジの数をそれぞれ返す

# apples配列の値は移動した距離なので、それぞれの値にaを足して現在地を取得しa_locationに代入する。オレンジも同様に処理する。
# a_location配列の値の中からsとtの範囲内にあるりんごのみを新しい配列として抽出し、.countで配列の中身の数を返す。
# オレンジも同様。

# appleもorangeも.selectから繋げてワンライナーで書けますが、読みやすさを重視しました。

# ====================
# As apples array contains distances for each apples fell from tyhe tree,
# add apple tree location to each distances.
# Do the same for oranges.

# Select apples that is on the location s or t, and between s and t, count how many values in the new array generated with .select method.
# Do the same for oranges.
