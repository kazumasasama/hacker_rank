function insertionSort2(n, arr) {
  for(let i = 1; i < n; i++){
    let currentValue = arr[i];
    for(var j = i - 1; j >= 0 && arr[j] > currentValue; j--){
        arr[j + 1] =  arr[j];
    }
    arr[j + 1] = currentValue;
    console.log(arr.join(' '))
  }
}

const n = 6
const arr = [1, 4, 3, 5, 6, 2]
// arr = "2 3 4 5 6 7 8 9 10 1".split(' ').map((num) => Number(num))
insertionSort2(n, arr)


// ====================
// 問題:
//   arr配列を挿入ソートで並び替えをする問題。
//   配列の最後の値以外は順番に並んでいるので、配列の最後の値を正しいインデックスに挿入する。

//   .sort()を使えば簡単に処理できますが使わないでください。
//   ソートのアルゴリズムを理解する事で言語に対する理解を深めることがこの問題の趣旨となっています。

// 条件:
//   n ->    arr配列の長さ  
//   arr ->  n個の整数が入った配列

// ポイント解説:
//   for (let i = 2; i <= n; i++) {
//     if (arr[arr.length - i] > lastValue) { // 配列の最後の値より大きい時。配列を後ろから指定するときは.lengthを使う。
//       arr[arr.length - i + 1] = arr[arr.length - i]; // 一つ後ろの値を一つ前の値で上書きする
//     } else {
//       arr[arr.length - i + 1] = lastValue;
//       break // これ以降はソートされているので処理を止める
//     }
//     console.log(arr.join(' ')); // arrをpでそのまま出力するとエラーになるので文字列として出力する
//   }
//   if (arr[0] > lastValue) { // 配列の最初の値が配列の最後の値より大きい時
//     arr[0] = lastValue;
//   }

// 参考:
//   挿入ソート
//   https://ja.wikipedia.org/wiki/%E6%8C%BF%E5%85%A5%E3%82%BD%E3%83%BC%E3%83%88

// ====================
//   for (let i = 2; i <= n; i++) {
//     if (arr[arr.length - i] > lastValue) { // When the value is bigger than the last value of the arr. Use .length to get the last value of the arr.
//       arr[arr.length - i + 1] = arr[arr.length - i]; // Update lower index value with current index value.
//     } else {
//       arr[arr.length - i + 1] = lastValue;
//       break // Lower index value(s) is already sorted. Stop the loop.
//     }
//     console.log(arr.join(' ')); // To prevent output error, print each values of the arr separated with a space as a string.
//   }
//   if (arr[0] > lastValue) { // When the last value of the arr is smaller than the first value of the arr
//     arr[0] = lastValue;
//   }