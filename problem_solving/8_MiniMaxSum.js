function miniMaxSum(arr) {
  let total = 0;
  let max = arr.reduce((prev, current) => prev + current, total) - Math.min(...arr)
  let min = arr.reduce((prev, current) => prev + current, total) - Math.max(...arr)
  console.log(`${min} ${max}`)
}

arr = [1, 2, 3, 4, 5]
miniMaxSum(arr)

// ====================
// 問題:
//   arrの中の値の一番大きな値を除いた合計(min)と
//   一番小さな値を除いた合計(max)を求める問題。

// ポイント解説:
//   arr.reduce((prev, current) => prev + current, total)
//     arr中の全ての値の合計を求める。

//   Math.min(...arr)
//     arr中の最小値を取得。
//     ... スプレッド構文は配列を展開する。

//   Math.max(...arr)
//     arr中の最大値を取得。

// ====================
// arr.reduce((prev, current) => prev + current, total)
//   Total value of arr.

// Math.min(...arr)
//   the smallest value in the arr
//   ... User spread syntax to expand array

// Math.max(...arr)
//   the greatest value in the arr