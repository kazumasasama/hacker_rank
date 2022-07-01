function kaprekarNumbers(p, q) {
  let range = new Array(q - p + 1).fill(null).map((_, i) => i + p);
  let kaprekar = range.map((num) => {
    let factorial = String(num * num)
    let firstHalfLength = Math.round((factorial.length) / 2);
    let lastHalfLength = Math.round((factorial.length) - firstHalfLength);
    if (factorial.length % 2 != 0) {
      firstHalfLength -= 1;
    }
    if (Number(factorial.substring(0, firstHalfLength)) + Number(factorial.substring(lastHalfLength)) === num) {
      return num;
    }
  });
  console.log(kaprekar);
  if (kaprekar.every(value => value === undefined)) {
    console.log("INVALID RANGE");
  } else {
    console.log(...kaprekar.filter(value => value > 0));
  }
}

let p = 1;
let q = 100;
kaprekarNumbers(p, q)

// ====================
// 問題:
//   与えられた数値の範囲内にカプレカ数があればその数値を、なければ"INVALID RANGE"を返す。
//   カプレカ数かどうかは以下の方法で確認できる。

// ポイント解説:
//   Line 2:
//     let range = new Array(q - p + 1).fill(null).map((_, i) => i + p)
//       pから1ずつ増加した値をqまで作って配列に入れる。
//       Rubyだったら range = [*(p..q)]

//   Line 5:
//     let firstHalfLength = Math.round((factorial.length) / 2);
//       2乗してできた値の前半分

//   Line 6:
//     let lastHalfLength = Math.round((factorial.length) - firstHalfLength);
//       2乗してできた値の後半分。

//   Line 7:
//     if (factorial.length % 2 != 0) {
//       firstHalfLength -= 1;
//     }
//       2乗￥あいてできた値の桁数が奇数の時は桁指定がずれるので、
//       最初の半分の桁数から1引いて調整する。

//   Line 15:
//     kaprekar.every(value => value === undefined)
//       配列内が全てundefinedかどうか。

//   Line 18:
//     (...kaprekar.filter(value => value > 0))
//       配列から0より大きい数値を取り出し新しい配列にし ...(スプレッド構文)で配列を展開する。
// 参考:
//   カプレカー数(wikipediaより)
  
//   2乗して上位の半分と下位の半分とに分けて和を取ったとき、元の値に等しくなる自然数。
//   桁を並べ替えて最大にした数と最小にした数との差を取ったとき、元の値に等しくなる自然数（カプレカー定数）。
//   https://ja.wikipedia.org/wiki/%E3%82%AB%E3%83%97%E3%83%AC%E3%82%AB%E3%83%BC%E6%95%B0
// ====================