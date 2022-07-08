function taumBday(b, w, bc, wc, z) {
  if (bc > wc + z) {
    return (b + w) * wc + (b * z);
  } else if (bc + z < wc) {
    return (b + w) * bc + (w * z);
  } else {
    return b * bc + w * wc;
  }
}
 
let b = 742407782
let w = 90529439
let bc = 847666641
let wc = 8651519
let z = 821801924
console.log(taumBday(b, w, bc, wc, z))
// ====================
// 問題:
//   友人の誕生日のプレゼントを買いに行くのだが、友人は欲しいプレゼントが決まっている。
//   黒いプレゼントと白いプレゼントを各指定個数買わなければいけない。
//   商品そのものの価格よりも交換した方が安く買える場合があるので、
//   そのことをふまえて総額が一番安くなるように購入したい。

//   一番安く買える場合の交換費用を含めた総出費金額を求める。

// 条件:
//   b => 黒いプレゼントの必要個数
//   w => 白いプレゼントの必要個数
//   bc => 黒いプレゼント一個の金額
//   wc => 白いプレゼント一個の金額
//   z => 他の色に交換するときの費用

// ポイント解説:
//   白いプレゼントの方が安くて交換したほうが安い場合
//     white = (b + w) * wc
//       一旦白黒全ての必要個数分白いプレゼントを買う。そのときの購入金額。
//     black = b * z
//       交換にかかる費用。

//   白いプレゼントの方が安くて交換したほうが安い場合
//     上記の白黒の処理を入れ替える。

//   それ以外の場合
//     b * bc + w * wc
//       必要個数ずつ買う。

// ====================