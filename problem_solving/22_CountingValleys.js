function countingValleys(steps, path) {
  const pathes = path.split('');
  let position = 0;
  let valley = 0;
  pathes.forEach((p) => {
    if (p === "U") {
      if (position === -1) {
        valley++;
      }
      position++;
    } else if (p === "D") {
      position--
    }
  })
  return valley;
}

const steps = 8
const path = "UDDDUDUU"
console.log(countingValleys(steps, path)) // =>  1

// ====================
// 問題:
//   ハイキングで歩いたルートの登り坂(uphill)と下り坂(downhill)を記録した。
//   スタート地点は高度0で、ゴール地点も高度0になる。つまりスタートとゴールの高度はいつも同じ。
//   高度が1変化する毎にuphillならU、downhillならDと記録する。
//   山は海面より高く、Uで始まりDで終わり、かつ高度0で終わる。
//   谷は海面より低く、Dで始まりUで終わり、かつ高度0で終わる。
//   記録したpathから谷が何箇所あるか返す問題。

// 条件:
//   steps (integer) -> pathの長さ
//   path (string)   -> 登り坂(uphill)と下り坂(downhill)の記録

// ポイント解説:
//   どういうシチュエーションの時に谷を通過するのかを考える。

//   pathes.forEach((p) => {
//     if (p === "U") { // 通るパスがuphill
//       if (position === -1) { // 既に海面下-1にいて、そこからuphillする場合 = 谷を通過した
//         valley++;
//       }
//       position++; // uphillなので1加算
//     } else if (p === "D") { // 通るパスがdownhill
//       position-- // downhillなので1減算
//     }
//   })

// ====================
// Think what is the situation when you are going to pass through valleys.

//   pathes.forEach((p) => {
//     if (p === "U") { // when upcoming pass is uphill
//       if (position === -1) { // you are at under the sea level and you are going up
//         valley++;
//       }
//       position++; // you are going up = increase position by 1
//     } else if (p === "D") { // when upcoming pass is downhill
//       position-- // you are going down = decrease position by 1
//     }
//   })