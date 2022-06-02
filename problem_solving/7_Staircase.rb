n = 4

def staircase(n)
  i = 1
  n.times do
    if i <= n
      puts "#{' ' * (n - i)}#{'#' * i}"
      # puts " " * (n - i) + "#" * i
    end
    i += 1
  end
end

staircase(n)

# ====================

# nの数だけ階層になった'#'を出力する問題。
# 一番下の階層のレングスは'n'になる。
# 階層の高さも'n'になる。

# 上記を求めるには'n.times'ループの中で'i'('#'の数)をループするごとに1増やす。
# 右揃えの階段を出力するので'#'の前にスペースが必要。

# 計算式として文字列を足していくよりも内挿した方が速い。

# ====================

# increase 'i' in the times loop to print '#' i times.
# spaces are necessary as the staircase should be right arrigned.

# it is a good idea to use interpolation to process faster. imagin if n was 9999999999999999999999999999999...
# pros: faster
# cons: harder to read