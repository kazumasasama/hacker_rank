function howManyGames(p, d, m, s) {
  let games = 0;
  while (s >= 0) {
    s -= p;
    p = Math.max(p - d, m);
    games++;
  }
  return games - 1;
}

const p = 16;
const d = 2;
const m = 1;
const s = 9981;
console.log(howManyGames(p, d, m, s)); // => 9917

// ====================
// 問題:
//   オンラインストアでゲームを買いたい。
//   そのオンラインストアがハロウィーンセールをするのでいつもよりゲームが安くなる。
//   セールの内容は、
//   1本目は定価。2本目以降は一つ前のゲームの値段から3ドル値引きされた金額になるが、
//   最低金額のm以下には値引きされない。

//   ゲームが何本購入できるかを求める。

// 条件:
//   p ->  1本目のゲームの定価
//   d ->  2本目以降の割引金額
//   m ->  割引後のゲームの最低価格
//   s ->  購入予算

// ポイント解説:
//   Line 5:
//     p = [p - d, m].max
//       割引後の値段かゲームの最低価格どちらか大きい方
// ====================

//   Line 5:
//   [p - d, m].max
//   The array contains discouted price and minimum cost. Return the greater value of the array.