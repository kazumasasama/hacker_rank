function gradingStudents(grades) {
  let rounded = grades.map((grade) => {
    if (grade < 38) {
      return grade
    } else if (String(grade).endsWith("3") || String(grade).endsWith("8")) {
      return grade += 2
    } else if ((String(grade).endsWith("4") || String(grade).endsWith("9"))) {
      return grade += 1
    } else {
      return grade
    }
  })
  return rounded
}

grades =[73, 67, 38, 33]
gradingStudents(grades)

// ====================
// 問題:
//   与えられた点数とその直近の5の倍数の数値(5, 10, 15... etc)との差が3未満の時、点数を繰り上げて5の倍数にする。
//   繰り上げはするけど繰り下げはない。
//   40点未満は不合格なので38未満の場合繰り上げがされないので点数をそのまま出力する。
//   テストの点は0 ~ 100点。

// 解説:
//   条件分岐
//     38点未満 => 点数はそのまま
//     下一桁が3か8 => 点数に2を足して5の倍数に繰り上げする。
//     下一桁が4か9 => 点数に1を足して5の倍数に繰り上げする。

//     String(grade).endsWith("3")
//       .endsWith()は文字列でないとundefinedを返すため、gradeを String() で文字列に変換する。

// ====================
//   If the grade's first digit is equal to 3 or 8, add 2 to the grade, make it multiple of 5.
//   If the grade's first digit is equal to 4 or 9, add 1 to the grade, make it multiple of 5.
//   Just return the grade if it's less then 38.
//   Print all values in the rounded array.

//   String(grade).endsWith("3")
//     .endsWith() returns undefined when argument class is other than string.
//     Use String() to convert argument value to string and avoid getting undefind.