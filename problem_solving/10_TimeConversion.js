function timeConversion(s) {
  let hour = s.slice(0, 2)
  let minute = s.slice(3, 5)
  let second = s.slice(6, 8)
  if (s.endsWith("AM")) {
    if (hour == "12") {
      hour = "00"
    }
  }else if (s.endsWith("PM")) {
    if (hour != "12") {
      hour = Number(hour) + 12
    }
  }
  return `${hour}:${minute}:${second}`
}

s = "12:05:45AM"
console.log(timeConversion(s));

// ====================
// 問題:
//   12時間(AM/PM)表示から24時間表示に変換する問題。

// ポイント解説:
//   時、分、秒をそれぞれ文字列sから.slice()で切り分ける。
//   AMで終わるのかPMで終わるのかで処理を分ける。
  
//   AMの場合
//     12時だった場合は00に変換。
  
//   PMの場合
//     12時以外の場合にhourに12を足す。

// ====================
//   Use .slice() to pick and substitute hour, minute and second to each valiables.
//   Switch prosess depends on given time, "AM" or "PM".