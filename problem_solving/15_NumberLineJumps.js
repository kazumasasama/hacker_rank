function kangaroo(x1, v1, x2, v2) {
  let xd = x2 - x1;
  let vd = v2 - v1;
  if (xd === 0) {
    return "YES";
  } else if (vd === 0) {
    return "NO";
  } else if (vd > 0) {
    return "NO";
  } else if (xd % vd === 0) {
    return "YES";
  } else {
    return "NO";
  }
}

const x1 = 0;
const v1 = 2;
const x2 = 5;
const v2 = 3;

console.log(kangaroo(x1, v1, x2, v2));

// ====================
// Twitter @MUSACODE_JP さんより教えていただいた考え方で書きました。
// コメントありがとうございました！

// 問題:
//   ゲームのスコアを記録した配列を最初から順番に比較していく。
//   今までのスコアと比べて最高得点だった場合の最高得点記録更新回数をカウントする。
//   今までのスコアと比べて最低得点だった場合の最低得点記録更新回数をカウントする。
//   上記二つの数を返す問題。

// ポイント解説:
//   xd => 二匹のカンガルーの距離の差
//   vd => 二匹のカンガルーの飛距離の差

//   Line 4:
//     既に同じ位置にいる => "YES"

//   Line 6:
//     飛距離が同じ、つまり後のカンガルーが前のカンガルーに追いつくことは無い => "NO"

//   Line 8:
//     二匹のカンガルーの飛距離の差が0かマイナスの時、二匹の距離は開いていく => "NO"
  
//   Line 10:
//     二匹間の距離が二匹の飛距離の差で割り切れる時(ちょうど同じポイントに到達する) => "YES"

// ====================
//   xd => The distance between two kangaroos
//   vd => The difference of jump distance between two kangaroos

//   Line 4:
//     Already at the same point => "YES"

//   Line 6:
//     Both two kangaroos' jumping distances are the same, which means they will never get to the same point => "NO"

//   Line 8:
//     When the difference of both two kangaroos' jumping distances is zero or negative Number, distance of two kangaloos will be bigger => "NO"

//   Line 10:
//     When the distance of two kangaroos can be devided with the difference of two kangaroo's jumping distance, which means they will get to the same point => "YES"