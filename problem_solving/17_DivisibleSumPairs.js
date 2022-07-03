function divisibleSumPairs(n, k, ar) {
  let count = 0;
  for (let i = 0; i < n - 1; i++) {
    for (let j = i + 1; j < n; j++) {
      if  ((ar[i] + ar[j]) % k === 0) {
        count++;
      }
    }
  }
  return count;
}

let ar = new Array(6 - 1 + 1).fill(null).map((_, i) => i + 1); // => [1, 2, 3, 4, 5, 6]
let k = 5
let n = ar.length
console.log(divisibleSumPairs(n, k, ar));


// ====================
// 問題:
//   ar配列の中から2つの値を組み合わせてkの値で割り切れる組み合わせが何通りあるかを求める。

// 条件:
//   n => ar配列の長さ
//   k => (割り算の)約数。この値で割り切れるか

// ポイント解説:
//   ar配列に対して2つのループを回し、その中でarの最初とその次の値を足し、
//   それがkで割り切れる場合のみcountに1を足す。
//   nはar.lengthと書いたほうが可読性が上がる気がしますが折角なので使いました。

// ====================