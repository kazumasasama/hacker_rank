function bonAppetit(bill, k, b) {
  bill.splice(k, 1);
  let total = 0;
  let anna = bill.reduce((prev, current) => prev + current, total) / 2;
  if (anna === b) {
    console.log("Bon Appetit");
  } else {
    console.log(b - anna);
  }
}

const bill = [3, 10, 2, 9];
const k = 1;
const b = 12;
bonAppetit(bill, k, b);

// ====================
// 問題:
//   アナとブライアンが一緒に食事をし、自分が注文した分だけを払う割り勘にすることにした。
//   ブライアンが請求書を確認してアナの払う分を伝えたが本当にあっているのかな?
//   正しく計算できてるか確かめなければ...

//   bill -> 二人の注文した物の値段
//   k    -> アナが食べなかった物 (billの0から始まるインデックス)
//   b    -> ブライアンがアナに請求した金額

//   もし割り勘金額が正しければ"Bon Appetit"、間違っていた場合は請求された金額との差額を返す。

// ポイント解説:
//   すこしハラハラする問題ですね。焦らず解いていきましょう。

//   Line 2: bill.splice(k, 1)
//     bill配列からアナの食べなかったkを除いて配列内を二人で食べたものだけにする。

//     .splice()は第一引数で指定したインデックスをスタートポイントとして、第二引数で指定した数だけ配列から要素を削除するjavascriptのビルトインメソッド。
//     元の配列を直接変えてしまう破壊的メソッドなので取り扱い注意。

//   Line 4: let anna = bill.reduce((prev, current) => prev + current, total) / 2
//     reduce()で配列の合計を出し、半分にするとアナが払う金額が得られる。

//   今回の出力はretrunだと何も出力されないのでconsole.log()で出力する。
// ====================

// bill -> Prices for all the orders
// k    -> Index of a order Anna didn't eat
// b    -> Amount of Brian charged Anna

// Line 2: bill.splice(k, 1)
//   Delete the order of Anna didn't eat fron the bill array.
//   Make the array only contains the orders of both people ate.

//   .splice()
//     This method is a javascript's builtin method. It takes two arguments, first argument is the starting index, second argument is number of value(s) should be deleted from the array.
//     This method is a destructive method. Be careful when you use this method.

// Line 4: let anna = bill.reduce((prev, current) => prev + current, total) / 2
//   Add up all the values in the bill array that was modified at the line 2,
//   divide the sum in two, you'll get the value equally devided for Anna.

// Use puts instead of return to output. Otherwise you won't pass any of test cases.