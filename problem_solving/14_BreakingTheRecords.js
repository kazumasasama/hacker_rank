function breakingRecords(scores) {
  let high = 0;
  let low = 0;
  let highLow = {
    highest: scores[0],
    lowest: scores[0]
  }
  for (let i = 1; i < scores.length; i++) {
    if (highLow['highest'] < scores[i]) {
      highLow['highest'] = scores[i];
      high++;
    }
    if (highLow['lowest'] > scores[i]) {
      highLow['lowest'] = scores[i];
      low++;
    }
  }
  return [high, low];
}

const scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
console.log(breakingRecords(scores))

// ====================
// 問題:
//   ゲームのスコアを記録した配列を最初から順番に比較していく。
//   今までのスコアと比べて最高得点だった場合の最高得点記録更新回数をカウントする。
//   今までのスコアと比べて最低得点だった場合の最低得点記録更新回数をカウントする。
//   上記二つの数を返す問題。

// ポイント解説:
//   ハッシュには初期値としてscores配列の最初の値を代入する。配列を使うと検索が速いのでハッシュを使いました。
  
//   ループ内でscores配列を以下のように処理する。
//     得点がハッシュのhighestに格納された値よりも高得点だった場合highestの値を更新。
//     得点がハッシュのlowestに格納された値よりも低得点だった場合lowestの値を更新。

//   出力は文字列での出力かのように書かれてますが配列をreturnで返してください。
//   ws.write(result.join(' ') + '\n'); とあるのでなんとなく配列で出力かな？と予想ができます。

// ====================
// Hash is easier to deal in this problem as array would need to use with indices. Also hash searcing is faster than array searching.