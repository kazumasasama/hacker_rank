function pageCount(n, p) {
  if (n <= 2) {
    return 0
  } else if (n % 2 === 0 && n - p === 1) {
    return 1
  } else {
    return Math.floor(Math.min(p / 2, (n - p) / 2))
  }
}

const n = 5;
const p = 4;
console.log(pageCount(n, p));

// ====================
// 問題:
//   目的のページまで1ページずつめくる時、本の初めからか、最後からか、どちらかページをめくる回数の少ない方の回数を返す。

// ポイント解説:
//   if (n <= 2)
//     総ページ数が3より少なければめくる必要がないので0

//   else if (n % 2 === 0 && n - p === 1)
//     ページ数が偶数かつ開きたいページが最後のページが後ろから1ページのみだった場合

//   return Math.floor(Math.min(p / 2, (n - p) / 2))
//     上記以外の場合は1ページめくるとインデックスは2正負どちらかに動くので、
//     前から開いた場合と後ろから開いた場合のページをめくる数それぞれを配列に入れ、
//     どちらか小さい方を返す。
//     Javascriptは割り算で小数点以下も返すので Math.floor()で小数点以下の切り捨てをする。
// ====================
//   if (n <= 2)
//     if total page number is smaller than 3, that means the page is already open.

//   else if (n % 2 === 0 && n - p === 1)
//     if total index of the book is even number and the target index is right before the last page, return 1. (The last page will be left side of the book.)

//   return Math.floor(Math.min(p / 2, (n - p) / 2))
//     Store both numbers of flipping from the front and from the end.
//     Return smaller value in the array.
//     Javascript returns decimals for quotient. Round down after the decimal point by using Math.floor()