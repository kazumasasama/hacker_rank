def miniMaxSum(arr)
  sum = arr.sum
  min = sum - arr.max
  max = sum - arr.min
  puts "#{min} #{max}"
end

arr = [*(1..5)]
miniMaxSum(arr)

# # ====================
# arrの中の値の一番大きな値を除いた合計(min)と
# 一番小さな値を除いた合計(max)を求める問題。

# arr中の全ての値の合計を出し、
# 合計値からarr中の最小値を引いて得られた値を求める
# 合計値からarr中の最大値を引いて得られた値を求める

# # ====================
# get sum of all values in the arr
# subtract the smallest value of the arr from the sum
# subtract the biggest value in the arr from the sum