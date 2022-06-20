function compareTriplets(a, b) {
  let alice = 0
  let bob = 0
  for (let i = 0; i < a.length; i++) {
    if (a[i] > b[i]) {
      alice++ 
    } else if (a[i] < b[i]) {
      bob++
    }
  }
  return [alice, bob]
}

a = [17, 28, 30]
b = [99, 16, 8]
console.log(compareTriplets(a, b))

// ===================
// 問題:
//   アリスとボブの得点を比較して得点が大きい方にポイントを付与し、
//   それぞれのポイント数を配列で返す。
//   得点が同じだった場合はどちらにもポイントは付かない。
  
// ポイント解説:
//   forループの中で配列aと配列bの同じインデックスの値を比較し、
//   値の大きかった人にポイントを付与する。

//   HackerRankにありがちですが、出力の形式に注意してください。スペースやデータ型がちがっていたりすると、答え自体は合っていても不合格になることがあります。

// ===================
//   In the for loop, compare same indices of the a and the b arrays, increase alice by one if a's value is greater.
