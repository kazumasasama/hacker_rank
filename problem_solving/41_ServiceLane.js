function serviceLane(n, cases, width) {
  let min_width = []
  cases.forEach((c) => {
    min_width.push(Math.min(...width.slice(c[0], c[1] + 1)))
  })
  return min_width
}

const n = 8
const width = [2, 3, 1, 2, 3, 2, 3, 3]
const cases = [[0, 3], [4, 6], [6, 7], [3, 5], [0, 7]]
console.log(serviceLane(n, cases, width)) // => [ 1, 2, 3, 2, 1 ]

// ====================
// はじめに...
//   widthがserviceLane()に与えられていないので、serviceLane()の下に記述してある以下の部分を修正し、widthを第三引数として受け取れるようにする。

//   誤 result = serviceLane n, cases
//   正 result = serviceLane n, cases, width

//   他の方も言っているようにこの問題は説明文も滅茶苦茶なのであまり気にしないで進めてください。

// 問題:
//   かなり要約して説明します。
//   widthで指定された幅のサービスレーンがあります。そのサービスレーンに入ることができる乗り物の最大幅を求める。

// 解説:
//   cases内の各配列にはwidthのインデックスが二つ入っているので、その範囲のwidthの中から最小値を求めれば答えが出る。

//   Line 4:
//     min_width.push(Math.min(...width.slice(c[0], c[1] + 1)))

//     ポイントは width.slice(c[0], c[1] + 1) で指定範囲のwidthを取得して、できた配列から Math.min() で最小値を取得している。Math.min()は引数にコンマで区切った数値を取るので .slice() で生成された配列をスプレッド構文(...)で展開しておく。

// ====================
//   A paired indices are stored in cases array as each inner array.
//   Use those indices to get width of the service lane.

//   Line 4:
//     min_width.push(Math.min(...width.slice(c[0], c[1] + 1)))

//     Get ranged values of array width using .slice() and get minimum value from the array .slice() generated.
//     As Math.min() takes comma sepalated integers, use spread syntax to expand the array.
