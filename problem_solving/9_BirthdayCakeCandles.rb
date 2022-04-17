def birthdayCakeCandles(candles)
  max = candles.max
  p candles.select {|candle| candle == max}.count
end