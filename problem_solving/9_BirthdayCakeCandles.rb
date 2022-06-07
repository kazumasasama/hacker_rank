def birthdayCakeCandles(candles)
  max = candles.max
  p candles.select {|candle| candle == max}.count
end

candles = [3, 2, 1, 3]
birthdayCakeCandles(candles) # => 2


# # ====================
# candles配列の一番大きな値が何個配列中にあるかを出力する。

# 配列から一番大きな値を取得。
# .selectメソッドを使って配列中の一番大きな値だけを新しい配列として返し、
# その配列の値の個数を返す

# この場合配列中の一番大きな値は3で、配列中に2つあるので2が出力される。

# # ====================
# get maximum number from the candles array.
# select the biggest number(s) from the candles array,
# put the nummber(s) into a new array,
# count array length