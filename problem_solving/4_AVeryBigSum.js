function aVeryBigSum(ar) {
  let total = 0
  return ar.reduce((prev, current) => prev + current, total)
}

ar = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
console.log(aVeryBigSum(ar))

// ====================
// 問題:
//   ar配列の合計値を求める。
// ====================