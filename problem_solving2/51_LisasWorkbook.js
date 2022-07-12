function workbook(n, k, arr) {
  let prob_in_page = [];
  let i = 0;
  while (i < arr.length) {
    let probs = [];
    let j = 1;
    while (j <= arr[i]) {
      if (probs.length == k) {
        prob_in_page.push(probs);
        probs = [];
      }
      probs.push(j);
      j++;
    }
    prob_in_page.push(probs);
    i++;
  }
  i = 0;
  let count = 0;
  while (i < prob_in_page.length) {
    if (prob_in_page[i].includes(i + 1)) {
      count++;
    }
    i++;
  }
  return count;
}

const n = 15;
const k = 20;
const arr = [1, 8, 19, 15, 2, 29, 3, 2, 25, 2, 19, 26, 17, 33, 22];
console.log(workbook(n, k, arr));

// ====================
// 問題:
//   リサの数学の新しい問題集の問題はチャプター毎に分かれている。
//   この問題集には特別問題があり、それはその特別問題の問題番号とページ数が一致した問題が特別問題となっている。
//   この問題集にある特別問題の数を返す。

// 条件:
//   n ->    チャプターの数
//   k ->    ページ毎の最大問題数
//   arr ->  それぞれのチャプターにある問題の数

// ポイント解説:
//   Line 7:
//     while (j <= arr[i]) {
//       if (probs.length == k) {
//         prob_in_page.push(probs);
//         probs = [];
//       }
//       probs.push(j);
//       j++;
//     }
//     1ページの最大問題数毎に問題を分けてprob_in_page配列に入れる。

//   Line 20:
//     if (prob_in_page[i].includes(i + 1)) {
//       count++;
//     }
//     ページ毎に問題が分かれた配列にページ数と合致する問題番号があればtrue
// ====================
//   Line 7:
//     while (j <= arr[i]) {
//       if (probs.length == k) {
//         prob_in_page.push(probs);
//         probs = [];
//       }
//       probs.push(j);
//       j++;
//     }

//     Devide problems in k into the probs array, store them in the prob_in_page array

//   Line 20:
//     if (prob_in_page[i].includes(i + 1)) {
//       count++;
//     }

//     True if inner array of prob_in_page contains problem number that is equal to page index.