function saveThePrisoner(n, m, s) {
  if ((n + m - 1) % n == 0) {
    return n
  } else {
    return (m + s - 1) % n
  }
}

let n = 7
let m = 19
let s = 2
console.log(saveThePrisoner(n, m, s));

// ====================
// 問題:
//   監獄に何人かの囚人がいます。
//   看守は囚人たちに平等におやつを配るために円卓に人数分の椅子を用意し、
//   一人ずつ座ってもらい順番に飴を配ることにした。
//   看守の悪ふざけで最後の飴は見た目は普通だがクソマズ仕様となっている。
//   そのクソマズ飴を受け取る人が座っている椅子のインデックスを返す問題。

// 条件:
//   n個の椅子には1からnまでの番号がそれぞれ順番に振り分けられている。

//   n => 囚人の人数 = 椅子の数
//   m => 飴の数
//   s => 飴を配り始める椅子の番号

// 解説:
//   (m + s - 1) 飴の数と最初の椅子のインデックスを足す。
//   インデックスの割り出しなので-1が必要。

//   できた数が人数で割り切れた場合は最後の椅子のインデックスを返す。
//   割り切れなかった場合は余りを返す。

// ====================
//   add number of candy and beginning chair index. As dealing with index, subtract -1 from the value of m + s is necessary to find the index.

//   if the value is divisible by number of prisoners, that mean the last candy will go to the prisoner who sat on the last chair.
//   if the value is not divisible by number of prisoners, return remainder.