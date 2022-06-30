function countApplesAndOranges(s, t, a, b, apples, oranges) {
  let aLocation = apples.map((apple) => apple + a);
  let oLocation = oranges.map((orange) => orange + b);
  console.log(aLocation.filter((location) => location >= s && location <= t).length);
  console.log(oLocation.filter((location) => location >= s && location <= t).length);
}

const s = 7
const t = 11
const a = 5
const b = 15
const apples = [-2, 2, 1]
const oranges = [5, -6]
countApplesAndOranges(s, t, a, b, apples, oranges)

// ====================
// 問題:
//   サムの家の敷地内にリンゴの木とオレンジの木があります。
//   敷地内の特定の範囲(サムの家の上)sからtに落ちたりんごとオレンジの数を返す。

// 条件:
//   s から t => この範囲に落ちたりんごとオレンジの数をそれぞれ返す
//   a => りんごの木の場所
//   b => オレンジの木の場所
//   apples => 落ちたりんごのaからの距離
//   oranges => 落ちたオレンジのbからの距離

// ポイント解説:

//   apples配列の値は移動した距離なので、それぞれの値にaを足して現在地を取得しaLocationに代入する。オレンジも同様に処理する。
//   aLocation配列の値の中からsとtの範囲内にあるりんごのみを新しい配列として抽出し、.lengthで配列の中身の数を返す。
//   オレンジも同様。

//   appleもorangeも.filterから繋げてワンライナーで書けますが、読みやすさを重視しました。

// ====================
//   As apples array contains the distances of each fell off apples
//   add apple tree location, add a value to each distances to get locataions of each apples on the ground.
//   Do the same for oranges.

//   Select apples that is on the location s or t, and between s and t, count how many values in the new array generated with .filter method.
//   Do the same for oranges.