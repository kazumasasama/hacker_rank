def fairRations(b) # Bをbに書き換える
  if b.sum.odd?
    return "NO"
  else
    i = 0
    loaf = 0
    while i < b.length - 1
      if b[i].odd?
        b[i] += 1
        b[i + 1] += 1
        loaf += 2
      end
      i += 1
    end
  end
  return loaf
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# N = gets.strip.to_i

# B = gets.rstrip.split.map(&:to_i) <=この部分と

# result = fairRations B  <=この部分のBをbにする

# fptr.write result
# fptr.write "\n"

# fptr.close()

b = [2, 3, 4, 5, 6]
p fairRations(b)

# ====================
# 問題:
#   パンを持っている人たちがいます。その人たちの持っているパンの数を全て偶数にしたい。
#   各人が一列に並び、パンの数が奇数の人がいたらその人と前か後ろの人どちらか一人に一つずつパンを与える。全ての人のパンの数が偶数になった時、配ったパンの数はいくつかを求める。
#   この方法で全ての人のパンの数が偶数にならない場合はNOを返す。

# 条件:
#   b => それぞれの人が持っているパンの数

# ポイント解説:
#   Rubyで引数に大文字を使うとエラーが出るようです。引数名とテストコードの部分のBを小文字のbにしておくとエラーが出なくなります。

#   配列に一回で2個のパンが増えるので配列内の合計値が奇数の場合はどうやっても全体が偶数にはならなくなる。なのでこの場合はNOを返す。

#   Line 7:
#     while i < b.length - 1
#       配列の最後は処理しなくていいので-1しておく。
  
#   Line 11:
#     配ったパンの数を取得したいのでループの中で奇数のパンを持つ人がいた場合に2カウントする。

# ====================
#   Use downcase 'b' for fairRations mathod argument and test code to avoid the error.
#   Ruby returns an error if you use uppercase characters in the argument.

#   The total number of bread increases 2 every time. That means if the total number of the array is odd, the total number of bread will never be even.
#   So return 'NO'.

#   Line 7:
#     while i < b.length - 1
#       Don't need to deal with the last value in the array. -1 from the ength of the array.
  
#   Line 11:
#     Increase loaf valiable in the loop if you hit the person who has odd number of bread.