function encryption(s) {
  let string = s;
  let floor = Math.floor(Math.sqrt(s.length));
  let ceil = Math.ceil(Math.sqrt(s.length));
  if (floor * ceil < s.length) {
    floor++;
  }
  while (string.length % floor !== 0) {
    string += "*";
  }
  let devided = string.split('');
  let indices = [];
  let prev = 0;
  let j = ceil
  for (let i = 0; i < ceil; i++) {
    prev = i;
    indices.push(i);
    for (let k = 0; k < floor - 1; k++) {
      indices.push(prev += j)
    }
  }
  let encrypted = indices.map(index => devided[index]).join('')
  let encrypted_array = []
  for (let i = 0; i < encrypted.length / floor; i++) {
    encrypted_array.push(encrypted.substr(i * floor, floor).replace('*', ''));
  }
  return encrypted_array.join(' ')
}

const s = "haveaniceday"
console.log(encryption(s))

// ====================
// 問題:
//   与えられた英文を暗号化する。
//   暗号化の手順は以下。

//   1.  英文からはスペースが取り除かれている

//   2.  その英文の文字数の平方根(何の2乗なのか)を求める。
//       整数でない平方根が得られる場合、四捨五入した数xと繰り上げた数yを求める。
//       整数の場合は x = y とする。x * y > s.length の条件を満たさない場合は x + 1。

//   3.  xを行、yを一行の最大文字数とする。最後の行は余りの文字なので文字数はyでなくても良い。

//   4.  生成されたものを縦読みし、一行縦読みする毎にスペースを入れる。

//   5.  完了!


// 条件:
//   引数で渡されてくる文字列にはスペースが入っていると説明文に記載がありますが、実際には入っていません。

//   s -> 小文字のアルファベットのみの文字列。記号やその他の文字は入っていない。

// ポイント解説:
//   今回は文字列を一文字ずつ分解し、どのように組み替えるのかに焦点を当てました。
//   インデックスを配列に生成し、そのインデックスを元に文字を組み替えました。

//   Line 3:
//     let floor = Math.floor(Math.sqrt(s.length));
//       平方根を求める方法はいくつかありますが、javascriptにはビルトインメソッドがあるのでそれを利用しました。
//       Math.sqrt()はdecimalが返ってくるのでfloorやceilを使って整数にしています。

//   Line 24:
//     for (let i = 0; i < encrypted.length / floor; i++) {
//       encrypted_array.push(encrypted.substr(i * floor, floor).replace('*', ''));
//     }
//       記号は使われないという条件を利用し、文字列を均等に分配するためにLine9で"*"を必要分追加しています。
//       この行で"*"を排除しているのはそのためです。

//   少しブルートフォースなコードになっているかもしれません。
//   より良い書き方がありましたらぜひ教えていただけると嬉しいです！
// ====================

// Line 3:
//   let floor = Math.floor(Math.sqrt(s.length));
//     Use Math.sqrt() to get square root.
//     When square root is not an integer, this builtin method returns decimal.

// Line 24:
//   for (let i = 0; i < encrypted.length / floor; i++) {
//     encrypted_array.push(encrypted.substr(i * floor, floor).replace('*', ''));
//   }
//   The string s is only contains lowercase alphabets so you can use "*" to adjust the length to use arrange all the letters evenly into array.

// This solution is brute force.
// Let me know if you have better solution.
// I always love to learn!