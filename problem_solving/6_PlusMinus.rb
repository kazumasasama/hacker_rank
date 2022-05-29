arr = [-4, 3, -9, 0, 4, 1]

def plusMinus(arr)
  pos = 0
  neg = 0
  zero = 0
  arr.each do |num|
    if num == 0
      zero += 1
    elsif num < 0
      neg += 1
    elsif num > 0
      pos += 1
    end   
  end
  puts sprintf("%.6f", pos/arr.length.to_f)
  puts sprintf("%.6f", neg/arr.length.to_f)
  puts sprintf("%.6f", zero/arr.length.to_f)
end

plusMinus(arr)

# ====================

# arr配列中の値の正、負、ゼロ、それぞれの割合を求める問題。

# eachループでarr内のそれぞれの値の正、負、ゼロそれぞれの数を取得。
# sprintfの第一引数には返値の桁数を指定し、第二引数に正、負、ゼロの割合を渡す。

# ====================

# count and store each numbers of positives, negatives and zeros to each valiables.

# the first argument of sprintf() is number of digits afater the decimal.
# the second argument is decimal number that is ratio.