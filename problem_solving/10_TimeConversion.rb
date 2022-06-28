def timeConversion(s)
  # if s.end_with?("PM")
  #   s.delete("PM")
  #   time = s.split(":")
  #   i = 0
  #   while i < time.length
  #     time[i] = time[i].to_i
  #     if time[i] < 10
  #       time[i] = "0" + time[i].to_s
  #     end
  #     i += 1
  #   end
  #   if time[0].to_i < 12
  #     time[0] = time[0].to_i + 12
  #   end
  #   p "#{time[0]}:#{time[1]}:#{time[2]}"
  # elsif s.end_with?("AM")
  #   s.delete("AM")
  #   time = s.split(":")
  #   i = 0
  #   while i < time.length
  #     time[i] = time[i].to_i
  #     if time[i] < 10
  #       time[i] = "0" + time[i].to_s
  #     end
  #     i += 1
  #   end
  #   if time[0].to_i == 12
  #     time[0] = "00"
  #   end
  #   p "#{time[0]}:#{time[1]}:#{time[2]}"
  # end

  hour = s[0..1]
  min_sec = s[2..7]
  if s.end_with?("AM")
    if hour == "12"
      hour = "00"
    end
  elsif s.end_with?("PM")
    if hour != "12"
      hour = hour.to_i + 12
    end
  end
  return "#{hour}#{min_sec}"
end

s = "12:05:45PM"
p timeConversion(s)

# ====================
# 06/28/2022 書き直してコードの長さが約半分になりました！

# 時とそれ以下の必要な文字列とで与えられた時間を切り分けてそれぞれ変数に代入する。

# まずAMで終わるのかPMで終わるのかで処理を分ける。

# AMの場合
#   12時だった場合は'00'に変換。

# PMの場合
#   12時以外の時にhourに12を足す。
#   hourは文字列なので .to_i で整数に変換して計算する。
#   一番最初のhourを定義する時に整数に変換することもできるが、時間が06などの場合整数で表現できないので文字列として扱うと処理しやすい。

# ====================


# 以前のコード
# ====================
# 12時間(AM/PM)表示から24時間表示にコンバートする問題。

# まずAMで終わるのかPMで終わるのかで処理を分ける。
# PMの場合
#   PMを文字列から削除
#   文字列を:で切り分けてできた配列をtimeに代入することで、time配列には[時, 分, 秒]が格納される。
#   10以下の場合は09, 08などで出力したいので、
#   ループ内で配列の値は文字列なので、それぞれを数値に変換してから比較する。
#   でーたの整形ができたら出力する

# AMの場合
#   PMの処理に加えて、12時だった場合は00に変換。

# ====================