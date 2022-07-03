function birthday(s, d, m) {
  let valid = [];
  for (let i = 0; i < s.length - m + 1; i++) {
    let total = 0;
    valid.push(s.slice(i, i + m).reduce((prev, current) => prev + current, total))
  }
  return valid.filter(value => value === d).length
}

const s = [1, 2, 1, 3, 2];
const d = 3;
const m = 2;
console.log(birthday(s, d, m));

// ====================
// 問題:
//   1つのブロックの大きさが違うチョコレートを分配したい。
//   m個連続したブロックの大きさの合計がdになる場合は何パターンあるかを返す問題。

// 条件:
//   s => チョコレートの各ブロックの大きさ
//   d => ロンの誕生日
//   m => ロンの誕生月

// ポイント解説:
//   Line 5:
//     valid.push(s.slice(i, i + m).reduce((prev, current) => prev + current, total))
//       s配列のインデックスを指定した範囲の合計を出し、その合計をvalid配列に入れる。
    
//   Line 7:
//     return valid.filter(value => value === d).length
//       valid配列からdと同じ値だけを新しい配列に抽出し、その配列の長さを返す。
// ====================

//   Line 5:
//     valid.push(s.slice(i, i + m).reduce((prev, current) => prev + current, total))
//       Get total of ranged indices of values from the s array, store generated total value in the valid array.

//   Line 7:
//     return valid.filter(value => value === d).length
//       Extract values as new array that is equal to Ron's birthday, return the generated array length.