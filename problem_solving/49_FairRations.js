function fairRations(B) {
  let loaf = 0
  if (B.reduce((sum, value) => {
    return sum + value
  }) % 2 === 1) {
    return "NO"
  } else {
    for (let i = 0; i < B.length - 1; i++) {
      if (B[i] % 2 === 1) {
        B[i]++;
        B[i + 1]++;
        loaf += 2;
      }
    }
    return loaf
  }
}

const B = [2, 3, 4, 5, 6] 
console.log(fairRations(B))

// ====================
// 問題:
//   パンを持っている人たちがいます。その人たちの持っているパンの数を全て偶数にしたい。
//   各人が一列に並び、パンの数が奇数の人がいたらその人と前か後ろの人どちらか一人に一つずつパンを与える。全ての人のパンの数が偶数になった時、配ったパンの数はいくつかを求める。
//   この方法で全ての人のパンの数が偶数にならない場合はNOを返す。

// 条件:
//   b => それぞれの人が持っているパンの数

// ポイント解説:
//   配列に一回で2個のパンが増えるので配列内の合計値が奇数の場合はどうやっても全体が偶数にはならなくなる。なのでこの場合はNOを返す。

//   Line 8:
//     for (let i = 0; i < B.length - 1; i++) {
//       配列の最後は処理しなくていいので-1しておく。
  
//   Line 11:
//     配ったパンの数を取得したいのでループの中で奇数のパンを持つ人がいた場合に2カウントする。

// ====================
//   The total number of bread increases 2 every time. That means if the total number of the array is odd, the total number of bread will never be even.
//   So return 'NO'.

//   Line 7:
//     for (let i = 0; i < B.length - 1; i++) {
//       Don't need to deal with the last value in the array. -1 from the ength of the array.
  
//   Line 11:
//     Increase loaf valiable in the loop if you hit the person who has odd number of bread.