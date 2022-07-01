def kaprekarNumbers(p, q)
  range = [*(p..q)]
  kaprekar = range.map do |num|
    length = ((num * num).to_s.length) / 2
    if (num * num).to_s.slice(0...length).to_i + (num * num).to_s.slice(length..-1).to_i == num
      num
    end
  end
  if kaprekar.compact == []
    puts "INVALID RANGE"
  else
    puts kaprekar.compact.join(" ")
  end
end

p, q = 100, 300
kaprekarNumbers(p, q)


# ====================
# 問題:
#   与えられた数値の範囲内にカプレカ数があればその数値を、なければ"INVALID RANGE"を返す。
#   カプレカ数かどうかは以下の方法で確認できる。

# ポイント解説:
#   length = ((num * num).to_s.length) / 2
#     2乗した時の桁数の真ん中を割り出す。

#   (num * num).to_s.slice(0...length).to_i
#     2乗してできた値の前半分。(0...length)の...はlengthを含まないので、桁数が奇数の場合は前半分の方が一桁短くなる。

#   (num * num).to_s.slice(length..-1).to_i
#     2乗してできた値の後半分。

#   .compact
#     配列から全てのnilを削除する。

# 参考:
#   カプレカー数(wikipediaより)
  
#   2乗して上位の半分と下位の半分とに分けて和を取ったとき、元の値に等しくなる自然数。
#   桁を並べ替えて最大にした数と最小にした数との差を取ったとき、元の値に等しくなる自然数（カプレカー定数）。
#   https://ja.wikipedia.org/wiki/%E3%82%AB%E3%83%97%E3%83%AC%E3%82%AB%E3%83%BC%E6%95%B0
# ====================