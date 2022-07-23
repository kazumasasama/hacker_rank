function beautifulTriplets(d, arr) {
  let count = 0;
  for (let i = 0; i < arr.length; i++) {
    if (arr.includes(arr[i] + d) && arr.includes(arr[i] + d * 2)) {
      count++;
    }
  }
  return count;

  // return arr.filter(num => arr.includes(num + d) && arr.includes(num + d * 2)).length
}

const d = 3
const arr = [1, 2, 4, 5, 7, 8, 10]
console.log(beautifulTriplets(d, arr))

// ====================
// 問題:
//   i < j < k
//   a[j] - a[i] = a[k] - a[j] = d
//   以上の条件に合致する[i, j, k]の組み合わせがいくつあるかを返す。

// 条件:
//   nは引数に渡されていませんが使用しなくても解答を得ることができるので無視してください。

//   n ->    arr配列の長さ
//   d ->    マッチする値
//   arr ->  小さい順にソートされた数値の配列

// ポイント解説:
//   Line 4: if (arr.includes(arr[i] + d) && arr.includes(arr[i] + d * 2)) {
//     arr.includes(arr[i] + d)
//       -> (a[j] - a[i] = d) // の条件に合致する値があればtrue
//     arr.includes(arr[i] + d * 2)
//       -> (a[k] - a[j] = d) // の条件に合致する値があればtrue

//     // 両方ともtrueだった場合countに1足す

//     // arr[k]は (arr[i] + d * 2) で求めることができる。

//   Line 10:
//   return arr.filter(num => arr.includes(num + d) && arr.includes(num + d * 2)).length
//     一行で記述も可能です。
//     .filterで条件にマッチした値を抽出した配列を作成しその値の数を返す。

// ====================
//   Line 4: if arr.include?(arr[i] + d) && arr.include?(arr[i] + d * 2)
//   arr.include?(arr[i] + d)
//     -> (a[j] - a[i] = d) # true if matches
//   arr.include?(arr[i] + d * 2)
//     -> (a[k] - a[j] = d) # true if matches
//   // if both true, increase count valiable

//   // arr[k] could calculated by (arr[i] + d * 2)

//   Line 10:
//   return arr.filter(num => arr.includes(num + d) && arr.includes(num + d * 2)).length
//   // To make this code one-linner, use .filter to generate array contains matched values then return it's length.