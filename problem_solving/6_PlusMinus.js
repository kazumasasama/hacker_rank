function plusMinus(arr) {
  let pos = 0;
  let neg = 0;
  let zero = 0;
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === 0) {
      zero++;
    } else if (arr[i] < 0) {
      neg++;
    } else if (arr[i] > 0) {
      pos++;
    }
  }
  console.log(Math.round(pos / arr.length * 1000000) / 1000000);
  console.log(Math.round(neg / arr.length * 1000000) / 1000000);
  console.log(Math.round(zero / arr.length * 1000000) / 1000000);
}

let arr = [-4, 3, -9, 0, 4, 1]
console.log(plusMinus(arr));

// ====================
// 問題:
//   arr配列中の値の正、負、ゼロ、それぞれの割合を求める問題。
//   返す値は小数点以下6桁より長い場合は7桁目を四捨五入した値で返す。
//   (なぜか四捨五入しなくても正解になります。)

// ポイント解説:
//   forループでarr内の全ての値を順に取得して正、負、ゼロ、それぞれの判定をし、
//   pos, neg, zero変数にそれぞれ出現回数を記録。

//   Line 14: console.log(Math.round(pos / arr.length * 1000000) / 1000000);
//     Math.roundで四捨五入しています。* 1000000) / 1000000 の部分が小数点以下の桁数指定になります。
// ====================

// count and store each numbers of positives, negatives and zeros to each valiables.

// Line 14: console.log(Math.round(pos / arr.length * 1000000) / 1000000);
//   round the value of 7 digits after decimal point.
