function staircase(n) {
  for(let i = 1; i <= n; i++){
    console.log(`${" ".repeat(n - i)}${"#".repeat(i)}`)
  }
}

n = 6;
staircase(n);

// ====================
// 問題:
//   nの数だけ階層になった'#'を出力する問題。
//   一番下の階層の長さは'n'になる。
//   階層の高さも'n'になる。

// ポイント解説:
//   右揃えの階段を出力するので'#'の前にスペースが必要。
//   計算式として文字列を足していくよりも内挿した方が速い。

//   Line 3: console.log(`${" ".repeat(n - i)}${"#".repeat(i)}`)
//     Javascriptはスペースに掛け算をしてもrubyとは違ってスペースの数が増えない。
//     .repeatを使って期待する数のスペースを出力する。

// ====================

// Spaces should be appeared before '#' as the staircase should be right arrigned.

// it is a good idea to use interpolation to process faster. imagin if n was 9999999999999999999999999999999...
// pros: faster
// cons: harder to read

// Line 3: console.log(`${" ".repeat(n - i)}${"#".repeat(i)}`)
//   Not like Ruby, Javascript doesn't allow us to math (multiply) the space " ",
//   use .repeat instead.