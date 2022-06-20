function simpleArraySum(ar) {
  let total = 0;
  return ar.reduce((prev, current) => prev + current, total);
}

ar = [1, 2, 3, 4, 10, 11]
console.log(simpleArraySum(ar))

// ====================
// 問題:
//   ar配列の合計値を求める。
// ====================