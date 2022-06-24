function diagonalDifference(arr) {
  let RtoL = 0
  let LtoR = 0
  for (let i = 0; i < arr.length; i++) {
    LtoR += arr[i][i];
    RtoL += arr[i][arr.length - 1 - i];
  }
  return Math.abs(LtoR - RtoL);
}

let arr = [ [ 11, 2, 4 ], [ 4, 5, 6 ], [ 10, 8, -12 ] ]
console.log(diagonalDifference(arr));

// ====================
// この問題をRubyで解いたときtwitter @MUSACODE_JPさんよりコメントいただき、その考え方で書いてみました。

// 問題:
//   n * n マトリックスの左右斜めの合計の差を求める問題。
//   (左上から右下) - (右上から左下) = 答え

// ポイント解説:
//   配列の中に配列が入っているのでforループの中でインデックス(i)を使いそれぞれの必要な値を取得して合計値を取得。

//   line 6: [arr.length - 1 - i]
//     右からの場合は中の配列のインデックスを後ろから取得している。

// ====================
// Use for loop to get desired both diagnoal values sum.

// line 6: [arr.length - 1 - i]
//   For fetching the diagnoal values from right to left, strat from the last value of the inner Array.