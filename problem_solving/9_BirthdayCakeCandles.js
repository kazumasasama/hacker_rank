function birthdayCakeCandles(candles) {
  let max = Math.max(...candles)
  return candles.filter(num => num == max).length
}

let candles = [3, 2, 1, 3]
console.log(birthdayCakeCandles(candles))

// ====================
// 問題:
//   candles配列の一番大きな値が何個配列中にあるかを出力する。

// ポイント解説:
//   Math.max(...candles)
//     配列から一番大きな値を取得。
//     ... スプレッド構文は配列を展開する。

//   candles.filter(num => num == max).length
//     .filterメソッドを使って配列中の一番大きな値だけを新しい配列として返し、
//     その配列の値の個数を取得。
//     この場合配列中の一番大きな値は3で、配列中に2つあるので2が出力される。

// ====================
//   Math.max(...candles)
//     Get the greatest value in the candles Array.
//     ... User spread syntax to expand array

//   candles.filter(num => num == max).length
//     Use .filter to select maximum number(s) in the candles array
//     and push into a new array, count how many values in the new array.
//     In this case, the maximum number is 3 and the candles array contains two of maximum number.